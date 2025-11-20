#!/usr/bin/python
import argparse
import os
import sys
import re
import collections

#############################
###
### HoI 4 Localisation Adder by Yard1, originally for Equestria at War mod
### Written in Python 2.7
###
### Copyright (c) 2018 Antoni Baum (Yard1)
### Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
### The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
### THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
###
### usage: hoi4localisationadder.py [-h] [-t] input output
### 
### Given an event, national_focus or ideas file, add missing localisation entries
### to a specified localisation file. Note: custom tooltips are not supported. In
### case of events, title, description and option names will be added (triggered
### titles and descriptions are supported). For national_focus and ideas, names
### and descriptions will be added. For decisions and decision_categories, names
### and category names will be added. WARNING: The script defaults to a decisions
### file if it cannot determine the type of file.
### 
### positional arguments:
###   input       Event, national_focus, decisions, decision_categories or ideas file to parse
###   output      Localisation file to write to (if empty/non-existing, a new
###               English localisation file will be created)
### 
### optional arguments:
###   -h, --help  show this help message and exit
###   -t, --todo  Add "#TODO" to every added line instead of just once (Default:
###               False)
### 
#############################
def readfile(name):
    print("Reading file " + name + "...")
    try:
        with open(name, "r") as f:
            lines = f.read().splitlines()
    except:
        try:
            with open(name, "r", encoding='utf-8') as f:
                lines = f.read().splitlines()
        except:
            try:
                with open(name, "r", encoding='utf-8-sig') as f:
                    lines = f.read().splitlines()
            except:
                print("Could not read file " + name + "!")
    tags = collections.OrderedDict()

    open_blocks = 0
    is_event_file = False
    is_focus_file = False
    is_idea_file = False
    is_decision_file = False
    is_decision_categories_file = False
    for line in lines:
        line = re.sub('#.*', "", line)
        if not is_event_file and not is_focus_file and not is_idea_file and not is_decision_categories_file:
            if "focus_tree" in line:
                is_focus_file = True
                print("File " + name + " is a national_focus file...")
            elif "add_namespace" in line:
                is_event_file = True
                print("File " + name + " is an event file...")
            elif "ideas" in line:
                is_idea_file = True
                print("File " + name + " is an ideas file...")
            elif "{" in line:
                is_decision_categories_file = True
                temp_tags = []
                print("File " + name + " is a decisions or decision_categories file...")
        if is_decision_categories_file:
            if open_blocks < 2 and "{" in line:
                temp_line = line
                temp_line = re.sub('\s|=(\s|){', "", temp_line)
                temp_line.strip()
                if not is_decision_file and open_blocks == 1:
                    temp_tags.append(temp_line)
                else:
                    tags[temp_line] = None
                    tags[temp_line + "_desc"] = None
            if not is_decision_file and open_blocks == 2 and ("available" in line or "visible" in line or "fire_only_once" in line or "cost" in line or "days_remove" in line or "remove_effect" in line or "complete_effect" in line):
                print("File " + name + " is a decisions file...")
                is_decision_file = True
                for key in temp_tags:
                    tags[key] = None
                    tags[key + "_desc"] = None
        elif is_focus_file:
            if open_blocks == 2 and re.match('^.*id ?=', line):
                temp_line = re.sub('^.*id ?=', "", line)
                temp_line = re.sub('\s', "", temp_line)
                temp_line.strip()
                tags[temp_line] = None
                tags[temp_line + "_desc"] = None
        elif is_idea_file:
            if open_blocks == 2 and "{" in line:
                temp_line = line
                temp_line = re.sub('\s|=(\s|){', "", temp_line)
                temp_line.strip()
                tags[temp_line] = None
                tags[temp_line + "_desc"] = None
        elif is_event_file:
            if open_blocks > 0 and open_blocks < 3 and re.match('^.*(title|desc|name|text) ?=', line):
                temp_line = re.sub('^.*(title|desc|name|text) ?=', "", line)
                temp_line = re.sub('\s', "", temp_line)
                temp_line.strip()
                tags[temp_line] = None
        open_blocks += line.count('{')
        open_blocks -= line.count('}')

    print("File " + name + " read successfully!")
    return list(tags.keys()), (is_event_file, is_focus_file, is_idea_file, is_decision_categories_file)
###################################################################
parser = argparse.ArgumentParser(description='Given an event, national_focus, decisions, decision_categories or ideas file, add missing localisation entries to a specified localisation file. Note: custom tooltips are not supported. In case of events, title, description and option names will be added (triggered titles and descriptions are supported). For national_focus and ideas, names and descriptions will be added. For decisions and decision_categories, names and category names will be added. WARNING: The script defaults to a decisions file if it cannot determine the type of file.')
parser.add_argument('input', metavar='input',
                    help='Event, national_focus, decisions, decision_categories or ideas file to parse')
parser.add_argument( 'output', metavar='output',
                    help='Localisation file to write to (if empty/non-existing, a new English localisation file will be created)')
parser.add_argument( '-t', '--todo', action='store_true',
                    help='Add "#TODO" to every added line instead of just once (Default: False)')

args = parser.parse_args()

parsed_file = readfile(args.input)
#if not parsed_file[1][0] and not parsed_file[1][1] and not parsed_file[1][2:]:
#    sys.exit("File " + args.input + " is not a valid event, national_focus or ideas file.")
lines = list()
try:
    with open(args.output, "r") as f:
        lines = f.read().splitlines()
except:
    try:
        with open(args.output, "r", encoding='utf-8') as f:
            lines = f.read().splitlines()
    except:
        try:
            with open(args.output, "r", encoding='utf-8-sig') as f:
                lines = f.read().splitlines()
        except:
            print("Could not read file " + args.output + "!")
output_lines = list()
if len(lines) < 1:
    print("Output file " + args.output + " is empty or doesn't exist, creating a new english localisation file.")
    output_lines.append("l_english:")
for line in lines:
    for i, parsed_line in enumerate(parsed_file[0]):
        match = re.match(r"^([^#:]*):", line)
        if match and match.group(1).strip() == parsed_line.strip():
            print(parsed_line + " already in output file, skipping")
            parsed_file[0].remove(parsed_file[0][i])
if len(parsed_file[0]) > 0:
    if not args.todo:
        output_lines.append("\n #TODO")
    else:
        output_lines.append("\n")
    for line in parsed_file[0]:
        if args.todo:
            output_lines.append(" #TODO")
        output_lines.append(" " + line + ":0 \"\"")
    with open(args.output,"a") as f:
        f.writelines(str(line) + "\n" for line in output_lines)
print("Appended " + str(len(parsed_file[0])) + " lines to output file " + args.output + " successfully!")
