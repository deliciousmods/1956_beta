#created by marijn211
#ignores instanced characters

import os

os.chdir(os.path.dirname(os.path.abspath(__file__)))
charlist = []

def removecomment(lineinput):
	lineinput = lineinput.split("#")
	return lineinput[0]

def track_depth(lineinput):
	global bracketdepth
	bracketdepth += lineinput.count("{")
	bracketdepth -= lineinput.count("}")

for filename in os.listdir(os.getcwd()):
	bracketdepth = 0
	AllowChecking = True
	with open(os.path.join(os.getcwd(), filename), 'r', encoding="utf8") as charfile:
		charlines = charfile.readlines()
	for line in charlines:
		line = removecomment(line)
		track_depth(line)
		if AllowChecking == False and track_depth == 2:
			AllowChecking = True
		if "instance" in line and "{" in line:
			AllowChecking = False
		if AllowChecking and "idea_token" in line:
			list = line.split("=")
			char = list[-1].strip()
			if char not in charlist:
				charlist.append(char)
			else:
				print("Error: ", char, " is a duplicate idea token")