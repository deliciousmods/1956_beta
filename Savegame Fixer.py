#created by marijn211
#this script meant purely for debugging adjusts old savegames to not crash instantly on newer versions
#use at own risk

import os
import sys
import re

savegamepath = r"{}".format(sys.argv[1])
#savegamepath = r"C:\Users\marij\Documents\Paradox Interactive\Hearts of Iron IV\save games\UN.hoi4"
stateheader = r"\n\t[0-9]+=\{\n"

ROOT_PATH = os.path.dirname(os.path.abspath(__file__))
def to_state_history_dir():
    os.chdir(ROOT_PATH + "\history\states")

to_state_history_dir()
statenumbers = list()
filelistmod = os.listdir()
for filename in filelistmod:
    extract = filename.split("-") #merely filtering on digits gives issues if the state name has a number
    statenumbers.append(int(extract[0]))

mod_states = max(statenumbers)

print("Identified ", mod_states, " states in mod/game")

base_state_def = '\n\tSTATENUM={\n\t\towner="STATEOWNER"\n\t}'
text_to_insert = list()
def create_state(input_state_id):
    owner = input("Please enter owner for state {}\n".format(input_state_id))
    state_def = base_state_def
    state_def = state_def.replace("STATENUM", str(input_state_id))
    state_def = state_def.replace("STATEOWNER", owner)
    text_to_insert.append(state_def)


with open( savegamepath, encoding="utf8" ) as savegame:
    savegamefile = savegame.read()
    print("Debug info: Pre reconstruction file length: ", len(savegamefile))
    states_section = savegamefile.split("\nstates={\n")[1]
    states_section = states_section.split("\n}\n")[0]
    state_header_list = re.findall(stateheader, states_section)
    savegame_states = re.search("\d+", state_header_list[-1]).group()
    print("Identified ", savegame_states, " states in savegame")
    for state_id in range(int(savegame_states)+1, mod_states+1):
        create_state(state_id)
    savegamespliting = re.split("\}\nequipments=\{", savegamefile)
    savegame_reconstruct = savegamespliting[0] + "".join(text_to_insert) + "\n}\nequipments={" + savegamespliting[1]

with open( savegamepath, "w", encoding="utf8" ) as savegame:
    print("Debug info - Post reconstruction file length: ", len(savegame_reconstruct))
    print("Debug info - Inserted text:", text_to_insert)
    savegame.write(savegame_reconstruct)

input("Press enter to exit;")