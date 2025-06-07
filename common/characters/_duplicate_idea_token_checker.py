#created by marijn211
#does not take instances into account, those generate false positives

import os

os.chdir(os.path.dirname(os.path.abspath(__file__)))

charlist = []
for filename in os.listdir(os.getcwd()):
	with open(os.path.join(os.getcwd(), filename), 'r', encoding="utf8") as charfile:
		charlines = charfile.readlines()
	for line in charlines:
		if "idea_token" in line:
			list = line.split("=")
			char = list[-1].strip()
			if char not in charlist:
				charlist.append(char)
			else:
				print("Error: ", char, " is a duplicate idea token")