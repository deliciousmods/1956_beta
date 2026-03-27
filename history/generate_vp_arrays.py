#created by marijn211 with aid from ChatGPT

import os
import re

ROOT_PATH = os.path.dirname(os.path.abspath(__file__))
DefaultDir = ROOT_PATH + "\states"

def extract_victory_points(lines):
    vp_ids = []

    filtered_lines = [
        line for line in lines
        if not re.match(r'^\s*#', line)
    ]

    # Remove inline comments (everything after #)
    filtered_text = "\n".join(
        re.sub(r'#.*', '', line) for line in filtered_lines
    )

    pattern = re.compile(r'victory_points\s*=\s*{\s*(\d+)', re.DOTALL)

    vp_ids = pattern.findall(filtered_text)
    
    return vp_ids


def find_insertion_index(lines):
    last_core_or_claim = -1

    for i, line in enumerate(lines):
        stripped = line.strip()
        if stripped.startswith("add_core_of") or stripped.startswith("add_claim_by") or stripped.startswith("owner"):   #owner added since some Indian states have 0 cores
            last_core_or_claim = i

    if last_core_or_claim == -1:
        return -1

    # Move forward past any empty lines
    i = last_core_or_claim + 1
    while i < len(lines) and lines[i].strip() == "":
        i += 1

    return i - 1  # insert AFTER last meaningful line


def already_has_entry(lines, vp_id):
    check_str = f"state_victory_points = {vp_id}"
    return any(check_str in line for line in lines)


def process_file(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        lines = f.readlines()

    vp_ids = extract_victory_points(lines)
    print(vp_ids)

    if not vp_ids:
        return  # nothing to do

    insert_index = find_insertion_index(lines)

    if insert_index == -1:
        print(f"Skipping {filepath}: no insertion point found.")
        return

    # Prepare new lines
    new_lines = []
    for vp in vp_ids:
        if not already_has_entry(lines, vp):
            new_lines.append(f"\t\tadd_to_array = {{ state_victory_points = {vp} }}\n")

    if not new_lines:
        return  # nothing new to add

    # Insert after the found index
    for offset, new_line in enumerate(new_lines, start=1):
        lines.insert(insert_index + offset, new_line)

    # Write back
    with open(filepath, "w", encoding="utf-8") as f:
        f.writelines(lines)

    print(f"Processed: {filepath}")


for filename in os.listdir(DefaultDir):
    if filename.endswith(".txt"):
        filepath = os.path.join(DefaultDir, filename)
        process_file(filepath)