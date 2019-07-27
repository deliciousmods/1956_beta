import os
import glob, os
import pickle
k = 0
files = []
filenameraw = input("How do you want to name the files?\n")
filename = filenameraw+".gfx"
filename2 = filenameraw+"_shine.gfx"

for file in glob.glob("*.dds"):
	files.append(file[:-4])

def writingthefile():
	with open(filename, 'a') as file:
		file.write("spriteTypes = {\n")
		for k in range (len(files)):
			file.write ('\n')
			file.write ("SpriteType = {\n")
			file.write ("name = \"GFX_"+files[k]+"\"\n")
			file.write ("texturefile = \"gfx/interface/goals/cub/"+files[k]+".dds\"\n")
			file.write ("}\n")

		file.write ("\n}\n")

def writingtheshinefile():
	with open(filename2, 'a') as file:
		file.write("spriteTypes = {\n")
		for k in range (len(files) -1):
			file.write ("SpriteType = {\n")
			file.write ("name = \"GFX_"+files[k]+"_shine\"\n")
			file.write ("texturefile = \"gfx/interface/goals/"+files[k]+".dds\"\n")
			file.write (""" effectFile = "gfx/FX/buttonstate.lua"
			animation = {
			animationmaskfile = "gfx/interface/goals/""")
			file.write(files[k]+".dds\"")
			file.write ("""
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
				animationmaskfile = "gfx/interface/goals/""")
			file.write(files[k]+".dds\"")
			file.write("""
				animationtexturefile = "gfx/interface/goals/shine_overlay.dds"
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
			}\n""")
		file.write("\n}")


	
writingthefile()

input("Thanks for using my script ! ;-)\n           BlueFoxy\n")
