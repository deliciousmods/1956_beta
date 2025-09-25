#!/usr/bin/python
import argparse
import re

#############################
###
### HoI 4 Focus GFX entry generator by Yard1, originally for Equestria at War mod
### Written in Python 3.8
###
### Copyright (c) 2020 Antoni Baum (Yard1)
### Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
### The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
### THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
###
### usage: focusgfxshine.py [-h] goals goals_shine
###
### Given a goals GFX file, add all missing shine entries to the goals_shine GFX file.
###
### positional arguments:
###   goals        Name of the goals file
###   goals_shine  Name of the goals_shine file
###
### optional arguments:
###   -h, --help   show this help message and exit
###
#############################

#RT56 SPECIFIC COMMAND FOR VSC: python focusgfxshine.py interface/r56_goals.gfx interface/r56_goals_shine.gfx

def get_shine_def(name, path):
    return """	SpriteType = {
		name = "%s_shine"
		texturefile = "%s"
		effectFile = "gfx/FX/buttonstate.lua"
		animation = {
			animationmaskfile = "%s"
			animationtexturefile = "gfx/interface/goals/shine_overlay.dds"
			animationrotation = -90.0
			animationlooping = no
			animationtime = 0.75
			animationdelay = 0
			animationblendmode = "add"
			animationtype = "scrolling"
			animationrotationoffset = { x = 0.0 y = 0.0 }
			animationtexturescale = { x = 1.0 y = 1.0 }
		}

		animation = {
			animationmaskfile = "%s"
			animationtexturefile = "gfx/interface/goals/shine_overlay.tga"
			animationrotation = 90.0
			animationlooping = no
			animationtime = 0.75
			animationdelay = 0
			animationblendmode = "add"
			animationtype = "scrolling"
			animationrotationoffset = { x = 0.0 y = 0.0 }
			animationtexturescale = { x = 1.0 y = 1.0 }
		}
		legacy_lazy_load = no
	}""" % (
        name,
        path,
        path,
        path,
    )


def main():
    parser = argparse.ArgumentParser(
        description="Given a goals GFX file, add all missing shine entries to the goals_shine GFX file."
    )
    parser.add_argument("goals", metavar="goals", help="Name of the goals file")
    parser.add_argument(
        "goals_shine", metavar="goals_shine", help="Name of the goals_shine file"
    )

    args = parser.parse_args()

    goal_regex = re.compile(
        r"name\s*=\s*\"([^\"]+)?\"(?:[^\}]*?)texturefile\s*=\s*\"([^\"]+)?\"",  re.MULTILINE | re.DOTALL | re.IGNORECASE
    )
    goal_name_regex = re.compile(
        r"name\s*=\s*\"([^\"]+)?\"",  re.MULTILINE | re.DOTALL | re.IGNORECASE
    )
    comments_regex = re.compile(
        r"#*$"
    )

    print(f"Reading {args.goals_shine}...")
    with open(args.goals_shine, "r") as f:
        goals_shine = f.read()

    goals_shine_matches = goal_name_regex.findall(
        comments_regex.sub(goals_shine, '')
    )
    goals_shine_matches = set(goals_shine_matches)

    last_bracket_idx = 0

    for i in range(len(goals_shine) - 1, -1, -1):
        if goals_shine[i] == "}":
            last_bracket_idx = abs(i)
            break

    goals_shine_split = [goals_shine[:last_bracket_idx], goals_shine[last_bracket_idx:]]

    print(f"Reading {args.goals}...")
    with open(args.goals, "r") as f:
        goals = f.read()

    goals_matches = goal_regex.findall(
        comments_regex.sub(goals, '')
    )
    goals_matches = {
        k: v for k, v in goals_matches if not f"{k}_shine" in goals_shine_matches
    }

    print(f"Found {len(goals_matches)} missing shine entries...")

    for k, v in goals_matches.items():
        print(f'"{k}" not found in "{args.goals_shine}", adding as "{k}_shine"...')
        goals_shine_split.insert(1, get_shine_def(k, v))

    print(f"Saving modified {args.goals_shine}...")
    with open(args.goals_shine, "w") as f:
        f.write("\n".join(goals_shine_split))


if __name__ == "__main__":
    main()
