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
from typing import Dict, List, Set, Tuple

# ---------------------------
# CONFIGURATION
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

### OTHER_GROUPS
MALAY - MAL INS BRN SGP EIS MLK SWK PHI
PACIFIC - SAM TON FIJ TAH CHT
SPANISH - SPR SPA URG ARG CHL PAR BOL PRU ECU COL VEN PAN COS NIC HON ELS GUA MEX CUB DOM BLZ PUE CNR EQG
NORDIC - SWE NOR DEN AHV ICE FAR
PORTUGUESE - POR BRA GLC
ROMANIAN - ROM TRA MOL
MONGOLIC - MON MEN BYA KAL
SIBERIAN - TAN ALT YAK KHA
PERMIC - KOM UDM
FINNIC - FIN KAR EST
HUNGARIAN - HUN SZK
DUTCH - HOL INS FLA
IRANIAN - PER TAJ KUR NOA AFG
THAI - SIA LAO
BALTIC - LAT LIT
ALBANIAN - ALB KOS
GREEK - GRE CYP
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
        if not line or line.startswith('#'):
            continue
            
        if line.startswith('###'):
            name = line[3:].strip()
            current = TagGroup(name)
            groups[name] = current
            continue
            
        if ' - ' in line and current:
            parts = line.split(' - ', 1)
            subname = parts[0].strip()
            tags = set(parts[1].split())
            if len(parts[0]) <= 5 and parts[0] in tags:
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
def parse_file(text: str):
    """Parse localization file into headers and entries by VP ID."""
    headers = []
    entries: Dict[int, List[dict]] = defaultdict(list)
    found_entry = False
    
    for line in text.splitlines():
        m = LOC_LINE_RE.match(line)
        if not found_entry and not m:
            headers.append(line)
            continue
            
        if m:
            found_entry = True
            d = m.groupdict()
            vid = int(d['id'])
            # Ensure comment has space before # when reconstructing
            comment = d['comment'].strip() if d['comment'] else ''
            entries[vid].append({
                'tag': d['tag'],
                'id': vid,
                'suffix': d['suf'],
                'text': d['text'],
                'comment': comment,  # Store without # prefix, add when building line
                'indent': d['indent'] or '',
                'manual': bool(MANUAL_RE.search(d['comment'] or ''))
            })
        else:
            headers.append(line)
            
    return headers, entries


# ---------------------------
# Expansion Logic
# ---------------------------
def expand_entries(groups, memberships, entries, audit=None):
    """Apply strict and group-level expansion."""
    added = 0
    all_tags = set(memberships.keys())
    
    for vid, elist in entries.items():
        by_tag = {e['tag']: e for e in elist if e['tag']}
        existing = set(by_tag.keys())
        if any(e['tag'] is None for e in elist):
            existing.add(None)
        manual_tags = {t for t, e in by_tag.items() if e['manual']}
        present_mems = {t: memberships[t] for t in by_tag if t in memberships}
        
        # Strict expansion (subgroup intersection)
        for src in list(by_tag.keys()):
            if src in manual_tags or src not in all_tags:
                continue
            src_m = present_mems.get(src, set())
            
            for tgt in all_tags - existing:
                if not (src_m & memberships.get(tgt, set())):
                    continue
                    
                cands = {t for t in by_tag if t not in manual_tags and (present_mems.get(t, set()) & memberships.get(tgt, set()))}
                best = min(cands, key=lambda x: (0 if x in manual_tags else 1, x)) if cands else src
                _add_entry(vid, tgt, by_tag[best], entries, existing, audit, 'strict')
                added += 1
        
        # Group expansion (fill gaps within groups)
        group_sources: Dict[str, Set[str]] = defaultdict(set)
        for t in by_tag:
            if t in manual_tags:
                continue
            for m in memberships.get(t, []):
                group_sources[m.split('::')[0]].add(t)
        
        for gname, sources in group_sources.items():
            if gname not in groups:
                continue
            for tgt in groups[gname].tags - existing:
                if tgt not in all_tags:
                    continue
                best = min(sources, key=lambda x: (0 if x in manual_tags else 1, x))
                _add_entry(vid, tgt, by_tag[best], entries, existing, audit, 'group')
                added += 1
        
    return added


def _add_entry(vid, tag, src_entry, all_entries, existing_set, audit, mode):
    """Create and append new entry."""
    # Build line with proper spacing: indent + tag_VICTORY_POINTS_vid:suffix "text" # comment
    indent = src_entry['indent']
    comment_part = f" # {src_entry['comment']}" if src_entry['comment'] else ''
    line = f"{indent}{tag}_VICTORY_POINTS_{vid}:{src_entry['suffix']} \"{src_entry['text']}\"{comment_part}"
    
    all_entries[vid].append({
        'tag': tag, 'id': vid, 'suffix': src_entry['suffix'],
        'text': src_entry['text'], 'comment': src_entry['comment'],
        'indent': indent, 'line': line, 'manual': False
    })
    existing_set.add(tag)
    
    if audit:
        audit.writerow([vid, tag, src_entry['tag'], src_entry['text'], mode])


# ---------------------------
# Output
# ---------------------------
def build_output(headers, entries, groups, memberships):
    """Generate sorted output grouped by language group."""
    # Build sort indices
    group_order = list(groups.keys())
    g_idx = {g: i for i, g in enumerate(group_order)}
    s_idx = {g: {s: i for i, s in enumerate(groups[g].subgroups)} for g in groups}
    
    def get_tag_sort_key(tag):
        """Get sort key for a tag (group_idx, subgroup_idx, tag_name)."""
        if tag is None:
            return (-1, -1, '')
        mems = sorted(memberships.get(tag, []))
        if not mems:
            return (999, 999, tag)
        # Parse membership string "GROUP::SUB" or "GROUP::"
        if '::' in mems[0]:
            g, s = mems[0].split('::', 1)
        else:
            g, s = mems[0], ''
        return (g_idx.get(g, 999), s_idx.get(g, {}).get(s, 999), tag)
    
    # Collect all entries and group them by their primary group
    # Each entry becomes: (vp_id, group_key, entry)
    grouped_entries: Dict[str, List[Tuple[int, dict]]] = defaultdict(list)
    ungrouped_entries: List[Tuple[int, dict]] = []
    
    for vid in entries.keys():
        for e in entries[vid]:
            tag = e.get('tag')
            sort_key = get_tag_sort_key(tag)
            group_name = group_order[sort_key[0]] if sort_key[0] >= 0 and sort_key[0] < len(group_order) else None
            
            if group_name:
                grouped_entries[group_name].append((vid, e))
            else:
                ungrouped_entries.append((vid, e))
    
    # Build output lines
    lines = list(headers)
    
    # First output ungrouped entries (tagless/canonical) sorted by VP ID
    if ungrouped_entries:
        ungrouped_entries.sort(key=lambda x: x[0])
        for vid, e in ungrouped_entries:
            # Add 1 space indent for tagless entries
            comment_part = f" # {e['comment']}" if e['comment'] else ''
            line = f" {e['tag']+'_' if e['tag'] else ''}VICTORY_POINTS_{e['id']}:{e['suffix']} \"{e['text']}\"{comment_part}"
            lines.append(line)
    
    # Then output grouped entries by group order
    for group_name in group_order:
        if group_name not in grouped_entries:
            continue
        
        # Sort entries within group: by subgroup, then by VP ID, then by tag name
        group_list = grouped_entries[group_name]
        group_list.sort(key=lambda x: (get_tag_sort_key(x[1].get('tag')), x[0], x[1].get('tag') or ''))
        
        for vid, e in group_list:
            comment_part = f" # {e['comment']}" if e['comment'] else ''
            if e.get('tag'):
                line = f"{e['indent']}{e['tag']}_VICTORY_POINTS_{e['id']}:{e['suffix']} \"{e['text']}\"{comment_part}"
            else:
                # Tagless entries get 1 space indent
                line = f" VICTORY_POINTS_{e['id']}:{e['suffix']} \"{e['text']}\"{comment_part}"
            lines.append(e.get('line') or line)
    
    return '\n'.join(lines) + '\n'


# ---------------------------
# Main
# ---------------------------
def main():
    parser = argparse.ArgumentParser(description='HOI4 VP Localization Processor', add_help=False)
    parser.add_argument('--dry-run', action='store_true', help='Preview only')
    parser.add_argument('--audit', metavar='FILE', help='Save CSV log')
    parser.add_argument('-h', '--help', action='store_true', help='Show help')
    args = parser.parse_args()
    
    if args.help:
        print(__doc__)
        sys.exit(0)

    # Hardcoded path: script_dir/localisation/english/replace/victory_points_l_english.yml
    script_dir = Path(__file__).parent.resolve()
    target_file = script_dir / "localisation" / "english" / "replace" / "victory_points_l_english.yml"
    
    if not target_file.exists():
        print(f"ERROR: File not found: {target_file}")
        print("Expected structure: <script_location>/localisation/english/replace/victory_points_l_english.yml")
        sys.exit(1)
    
    print(f"Processing: {target_file}")
    
    text = target_file.read_text(encoding='utf-8', errors='replace')
    headers, entries = parse_file(text)
    groups = parse_groups(TAG_LIST_TEXT)
    memberships = get_memberships(groups)
    
    print(f"Parsed {len(entries)} VICTORY_POINTS IDs")
    
    audit_fh = None
    audit_writer = None
    if args.audit:
        audit_fh = open(args.audit, 'w', newline='', encoding='utf-8')
        audit_writer = csv.writer(audit_fh)
        audit_writer.writerow(['vid', 'target', 'source', 'text', 'mode'])
    
    added = expand_entries(groups, memberships, entries, audit_writer)
    print(f"Added {added} new entries")
    
    result = build_output(headers, entries, groups, memberships)
    
    if args.dry_run:
        print('\n--- PREVIEW (first 40 lines) ---')
        for line in result.splitlines()[:40]:
            print(line)
    else:
        target_file.write_text(result, encoding='utf-8')
        print(f"Overwritten: {target_file} ({len(result.splitlines())} lines)")
    
    if audit_fh:
        audit_fh.close()
        print(f"Audit saved: {args.audit}")


if __name__ == '__main__':
    main()