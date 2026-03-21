#!/usr/bin/env python3
"""
reprocess_vps.py - Victory Point Localization Processor

USAGE:
    python reprocess_vps.py              # Process and overwrite
    python reprocess_vps.py --dry-run    # Preview changes only
    python reprocess_vps.py --audit=log  # Save changes to CSV log

File location: <script_dir>/localisation/english/replace/victory_points_l_english.yml
"""
from __future__ import annotations
import re
import csv
import argparse
import sys
from collections import defaultdict
from pathlib import Path
from typing import Dict, List, Set, Tuple, Optional

# ---------------------------
# Configuration
# ---------------------------
TAG_LIST_TEXT = """
### GERMANIC
GERMAN - GER
SAXON - PRE HAN MEK SHL DNZ
FRANCONIAN - LUX RHI HES THU SAX SAR VGE
ALEMANNIC - LIE WUR BAD SWI
AUSTRIAN - AUS BAY

### ITALIAN
ITALIAN - ITA AOI
CISALPINE - VNZ SAN
SICILIAN - SIC
NEAPOLITAN - NAP
TUSCAN - TOS PAP COR

### SLAVIC
RUSSIAN - SOV FER VLA CCK BLR
UKRAINIAN - UKR RUT GUK
CZECHOSLOVAK - CZE SLO
POLISH - POL KSH SIL
SERBOCROATIAN - YUG SER CRO SLV BOS MNT HRZ
BULGARIAN - BUL MAC

### FRENCH
FRENCH - FRA QBC FRI
FRANCIAN - WLL BEL
OCCITAN - OCC MNC CAT ADR

### TURKIC
KIPCHAK - KAZ BSK TAT KYR KKP CRI KBK
OGHUZ - TUR AZR TMS
KARLUK - UZB KHI BUK SIK

### CELTIC
GOIDELIC - IRE SCO NIR
BRITTONIC - BRI WLS

### ARABIC
ARABIC - ALG LBA TUN SUD SSU MRT WES MOR MLT
LEVANTINE - EGY JOR LEB PAL SYR
GULF - SAU IRQ UAE YEM OMA IMO QAT KUW BHR

### MALAY
MALAY - MAL INS BRN SGP EIS MLK SWK PHI

### PACIFIC
PACIFIC - SAM TON FIJ TAH CHT

### SPANISH
SPANISH - SPR SPA URG ARG CHL PAR BOL PRU ECU COL VEN PAN COS NIC HON ELS GUA MEX CUB DOM BLZ PUE CNR EQG

### NORDIC
NORDIC - SWE NOR DEN AHV ICE FAR

### PORTUGUESE
PORTUGUESE - POR BRA GLC

### ROMANIAN
ROMANIAN - ROM TRA MOL

### MONGOLIC
MONGOLIC - MON MEN BYA KAL

### SIBERIAN
SIBERIAN - TAN ALT YAK KHA

### PERMIC
PERMIC - KOM UDM

### FINNIC
FINNIC - FIN KAR EST

### HUNGARIAN
HUNGARIAN - HUN SZK

### DUTCH
DUTCH - HOL INS FLA

### IRANIAN
IRANIAN - PER TAJ KUR NOA AFG

### THAI
THAI - SIA LAO

### BALTIC
BALTIC - LAT LIT

### ALBANIAN
ALBANIAN - ALB KOS

### GREEK
GREEK - GRE CYP

### TIBETAN
TIBETAN - TIB BHU SKK
"""

LOC_LINE_RE = re.compile(
    r'^(?P<indent>\s*)(?:(?P<tag>[A-Z0-9]{2,5})_)?VICTORY_POINTS_(?P<id>\d+):(?P<suf>\d+)\s+"(?P<text>[^"]*)"\s*(?:#(?P<comment>.*))?$'
)
MANUAL_RE = re.compile(r'\b(MANUAL|EXCEPTION|!MANUAL|FORCE)\b', re.I)


# ---------------------------
# Data Structures
# ---------------------------
class TagGroup:
    def __init__(self, name: str):
        self.name = name
        self.tags: Set[str] = set()
        self.subgroups: Dict[str, Set[str]] = {}

    def add_subgroup(self, name: str, tags: Set[str]):
        self.subgroups[name] = tags
        self.tags.update(tags)


def parse_groups(text: str) -> Dict[str, TagGroup]:
    """Parse group hierarchy from text."""
    groups: Dict[str, TagGroup] = {}
    current = None

    for line in text.strip().split('\n'):
        line = line.strip()
        if not line:
            continue

        # Check for ### group headers FIRST (before checking for # comments)
        if line.startswith('###'):
            name = line[3:].strip()
            current = TagGroup(name)
            groups[name] = current
            continue

        # Skip comment lines starting with # (but not ### which was handled above)
        if line.startswith('#'):
            continue

        if ' - ' in line and current:
            parts = line.split(' - ', 1)
            subname = parts[0].strip()
            tags = set(parts[1].split())
            # If the subname IS one of the tags (like "GERMAN - GER"), add to group's tags directly
            # Otherwise, it's a subgroup (like "SAXON - PRE HAN...")
            if subname in tags:
                current.tags.update(tags)
            else:
                current.add_subgroup(subname, tags)

    return groups


def get_memberships(groups: Dict[str, TagGroup]) -> Dict[str, Set[str]]:
    """Map each tag to its group memberships."""
    mems: Dict[str, Set[str]] = defaultdict(set)
    for gname, g in groups.items():
        for tag in g.tags:
            mems[tag].add(f"{gname}::")
        for sname, stags in g.subgroups.items():
            for tag in stags:
                mems[tag].add(f"{gname}::{sname}")
    return mems


# ---------------------------
# File Parsing
# ---------------------------
def parse_file(text: str) -> Tuple[List[str], Dict[int, List[dict]], Set[int]]:
    """Parse localization file into headers and entries by VP ID.

    Returns:
        headers: Lines before the first entry
        entries: Dict mapping province ID to list of entry dicts
        blank_ids: Set of province IDs that have blank (empty text) entries
    """
    headers = []
    entries: Dict[int, List[dict]] = defaultdict(list)
    blank_ids: Set[int] = set()
    found_entry = False

    # Handle BOM - strip all leading BOM characters (file may have double BOM)
    # \ufeff is the Unicode BOM character
    while text.startswith('\ufeff'):
        text = text[1:]

    for line in text.splitlines():
        m = LOC_LINE_RE.match(line)
        if not found_entry and not m:
            headers.append(line)
            continue

        if m:
            found_entry = True
            d = m.groupdict()
            vid = int(d['id'])
            text_content = d['text']

            # Track blank entries (empty text)
            if text_content.strip() == '':
                blank_ids.add(vid)

            # Ensure comment has space before # when reconstructing
            comment = d['comment'].strip() if d['comment'] else ''
            entries[vid].append({
                'tag': d['tag'],
                'id': vid,
                'suffix': d['suf'],
                'text': text_content,
                'comment': comment,
                'indent': d['indent'] or '',
                'manual': bool(MANUAL_RE.search(d['comment'] or '')),
                'is_blank': text_content.strip() == ''  # Flag for blank entries
            })
        else:
            headers.append(line)

    return headers, entries, blank_ids


def parse_definition_csv(filepath: Path) -> Set[int]:
    """Parse definition.csv and return set of all province IDs."""
    provinces = set()
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            reader = csv.reader(f, delimiter=';')
            for row in reader:
                if row and row[0].strip().isdigit():
                    provinces.add(int(row[0]))
    except FileNotFoundError:
        print(f"Warning: definition.csv not found at {filepath}")
    except Exception as e:
        print(f"Warning: Error reading definition.csv: {e}")
    return provinces


# ---------------------------
# Expansion Logic
# ---------------------------
def expand_entries(groups, memberships, entries, audit=None):
    """Apply strict and group-level expansion."""
    added = 0
    all_tags = set(memberships.keys())

    for vid, elist in entries.items():
        # Skip blank entries - don't expand them
        if all(e.get('is_blank', False) for e in elist):
            continue

        # Separate tagged and tagless entries
        tagged_entries = [e for e in elist if e['tag'] is not None and not e.get('is_blank', False)]
        tagless_entries = [e for e in elist if e['tag'] is None and not e.get('is_blank', False)]

        by_tag = {e['tag']: e for e in tagged_entries}
        existing_tags = set(by_tag.keys())

        manual_tags = {t for t, e in by_tag.items() if e['manual']}
        present_mems = {t: memberships.get(t, set()) for t in by_tag if t in memberships}

        # Determine fallback source for expansion
        fallback_source = None
        non_manual_tagged = [e for e in tagged_entries if not e['manual']]
        if non_manual_tagged:
            fallback_source = non_manual_tagged[0]
        elif tagless_entries:
            fallback_source = tagless_entries[0]

        if fallback_source is None:
            continue

        # Strict expansion (subgroup intersection)
        for src_tag, src_entry in by_tag.items():
            if src_tag in manual_tags or src_tag not in all_tags:
                continue
            src_m = present_mems.get(src_tag, set())

            for tgt in all_tags - existing_tags:
                tgt_m = memberships.get(tgt, set())
                if not (src_m & tgt_m):
                    continue

                cands = {t: by_tag[t] for t in existing_tags if t not in manual_tags and (present_mems.get(t, set()) & tgt_m)}
                if cands:
                    best_tag = min(cands.keys(), key=lambda x: (0 if x in manual_tags else 1, x))
                    best_entry = by_tag[best_tag]
                else:
                    best_entry = src_entry

                _add_entry(vid, tgt, best_entry, entries, existing_tags, audit, 'strict')
                added += 1

        # Group expansion (fill gaps within groups)
        group_sources: Dict[str, List[dict]] = defaultdict(list)
        for e in tagged_entries:
            if e['manual']:
                continue
            for m in memberships.get(e['tag'], []):
                gname = m.split('::')[0]
                group_sources[gname].append(e)

        for gname, sources in group_sources.items():
            if gname not in groups:
                continue
            group_obj = groups[gname]

            for tgt in group_obj.tags - existing_tags:
                if tgt not in all_tags:
                    continue

                tgt_mems = memberships.get(tgt, set())
                best_source = None
                best_score = (999, '')

                for src in sources:
                    src_mems = memberships.get(src['tag'], set())
                    score = (0 if not src['manual'] else 1, src['tag'])
                    if best_source is None or score < best_score:
                        best_source = src
                        best_score = score

                if best_source is None:
                    best_source = sources[0] if sources else fallback_source

                _add_entry(vid, tgt, best_source, entries, existing_tags, audit, 'group')
                added += 1

    return added


def _add_entry(vid, tag, src_entry, all_entries, existing_set, audit, mode):
    """Create and append new entry."""
    new_entry = {
        'tag': tag,
        'id': vid,
        'suffix': src_entry['suffix'],
        'text': src_entry['text'],
        'comment': src_entry['comment'],
        'indent': src_entry['indent'] if src_entry['tag'] else ' ',
        'manual': False,
        'is_blank': False  # New entries are never blank
    }

    all_entries[vid].append(new_entry)
    existing_set.add(tag)

    if audit:
        audit.writerow([vid, tag, src_entry.get('tag', ''), src_entry['text'], mode])


def generate_blank_entries(existing_ids: Set[int], max_province: int) -> List[str]:
    """Generate blank localization entries for provinces without VP definitions."""
    blank_lines = []
    missing_ids = sorted(set(range(1, max_province + 1)) - existing_ids)

    for vid in missing_ids:
        blank_lines.append(f' VICTORY_POINTS_{vid}:0 ""')

    return blank_lines


# ---------------------------
# Output
# ---------------------------
def build_output(headers, entries, blank_ids, blank_lines=None):
    """Generate output sorted by province ID.

    Non-blank entries are sorted by province ID in the main section.
    Blank entries (including previously blank ones) are relegated to the bottom section.
    If a previously blank entry now has content, it will be sorted normally.
    """
    all_lines = list(headers)

    # Separate non-blank entries from still-blank entries
    non_blank_entries = []
    still_blank_entries = []

    for vid in entries.keys():
        for e in entries[vid]:
            # Check if this entry is still blank (empty text)
            if e.get('is_blank', False) or e['text'].strip() == '':
                still_blank_entries.append((vid, e))
            else:
                non_blank_entries.append((vid, e))

    # Sort non-blank entries by province ID
    non_blank_entries.sort(key=lambda x: x[0])

    # Build lines for non-blank entries
    for vid, e in non_blank_entries:
        comment_part = f" # {e['comment']}" if e['comment'] else ''
        if e.get('tag'):
            line = f'{e["indent"]}{e["tag"]}_VICTORY_POINTS_{e["id"]}:{e["suffix"]} "{e["text"]}"{comment_part}'
        else:
            line = f' VICTORY_POINTS_{e["id"]}:{e["suffix"]} "{e["text"]}"{comment_part}'
        all_lines.append(line)

    # Add blank entries section at the bottom
    # Include both newly generated blanks and still-blank existing entries
    all_blank_ids = set()

    # Collect IDs from still-blank entries
    for vid, e in still_blank_entries:
        all_blank_ids.add(vid)

    # Collect IDs from newly generated blanks
    if blank_lines:
        for line in blank_lines:
            m = LOC_LINE_RE.match(line)
            if m:
                all_blank_ids.add(int(m.group('id')))

    if all_blank_ids:
        all_lines.append("")
        all_lines.append(" ##### AUTOMATICALLY-GENERATED BLANK PROVINCES #####")
        all_lines.append("")

        # Sort blank entries by ID and add them
        for vid in sorted(all_blank_ids):
            # Check if we have an existing blank entry to preserve its format
            existing_blank = None
            for bv, be in still_blank_entries:
                if bv == vid:
                    existing_blank = be
                    break

            if existing_blank:
                comment_part = f" # {existing_blank['comment']}" if existing_blank['comment'] else ''
                if existing_blank.get('tag'):
                    line = f'{existing_blank["indent"]}{existing_blank["tag"]}_VICTORY_POINTS_{existing_blank["id"]}:{existing_blank["suffix"]} ""{comment_part}'
                else:
                    line = f' VICTORY_POINTS_{existing_blank["id"]}:{existing_blank["suffix"]} ""{comment_part}'
                all_lines.append(line)
            else:
                # New blank entry
                all_lines.append(f' VICTORY_POINTS_{vid}:0 ""')

    return '\n'.join(all_lines) + '\n'


# ---------------------------
# Main
# ---------------------------
def main():
    parser = argparse.ArgumentParser(description='HOI4 VP Localization Processor', add_help=False)
    parser.add_argument('--dry-run', action='store_true', help='Preview only')
    parser.add_argument('--audit', metavar='FILE', help='Save CSV log')
    parser.add_argument('--no-blanks', action='store_true', help='Skip generating blank entries')
    parser.add_argument('-h', '--help', action='store_true', help='Show help')
    args = parser.parse_args()

    if args.help:
        print(__doc__)
        sys.exit(0)

    script_dir = Path(__file__).parent.resolve()
    target_file = script_dir / "localisation" / "english" / "replace" / "victory_points_l_english.yml"

    if not target_file.exists():
        print(f"ERROR: File not found: {target_file}")
        print("Expected structure: <script_location>/localisation/english/replace/victory_points_l_english.yml")
        sys.exit(1)

    print(f"Processing: {target_file}")

    # FIX: Read with utf-8-sig to properly handle any BOM (single, double, or none)
    # utf-8-sig automatically strips the BOM if present
    text = target_file.read_text(encoding='utf-8-sig', errors='replace')
    headers, entries, existing_blank_ids = parse_file(text)
    groups = parse_groups(TAG_LIST_TEXT)
    memberships = get_memberships(groups)

    print(f"Parsed {len(entries)} VICTORY_POINTS IDs")
    print(f"Loaded {len(memberships)} language tags across {len(groups)} groups")

    # Parse definition.csv for blank generation
    definition_path = script_dir / "map" / "definition.csv"
    all_provinces = parse_definition_csv(definition_path)

    # For blank generation, consider all provinces that have entries (blank or not)
    existing_ids = set(entries.keys())
    max_province = max(all_provinces) if all_provinces else 0

    if all_provinces:
        print(f"Loaded {len(all_provinces)} provinces from definition.csv")
        print(f"Found {len(existing_ids)} existing VP localizations ({len(existing_blank_ids)} blank)")
        print(f"Missing: {len(all_provinces - existing_ids)} provinces without localization")

    audit_fh = None
    audit_writer = None
    if args.audit:
        audit_fh = open(args.audit, 'w', newline='', encoding='utf-8')
        audit_writer = csv.writer(audit_fh)
        audit_writer.writerow(['vid', 'target', 'source', 'text', 'mode'])

    added = expand_entries(groups, memberships, entries, audit_writer)
    print(f"Added {added} new entries from expansion")

    # Generate blank entries for provinces that don't exist at all
    blank_lines = None
    if not args.no_blanks and all_provinces:
        blank_lines = generate_blank_entries(existing_ids, max_province)
        print(f"Generated {len(blank_lines)} new blank entries for undefined provinces")

    result = build_output(headers, entries, existing_blank_ids, blank_lines)

    if args.dry_run:
        print('\n--- PREVIEW (first 40 lines) ---')
        for line in result.splitlines()[:40]:
            print(line)
        if blank_lines:
            print('\n--- BLANK ENTRIES (first 10) ---')
            for line in result.splitlines()[-10:]:
                print(line)
    else:
        # FIX: Write with utf-8-sig for HOI4 compatibility (adds single BOM)
        target_file.write_text(result, encoding='utf-8-sig')
        print(f"Overwritten: {target_file} ({len(result.splitlines())} lines)")

    if audit_fh:
        audit_fh.close()
        print(f"Audit saved: {args.audit}")


if __name__ == '__main__':
    main()