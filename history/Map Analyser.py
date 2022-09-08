#created by marijn211
#this script is focused on generating map statistics based on the state history files of a mod, taking vanilla values if there is gaps in state numbers
HOIIVPath = "E:\Games\Steam\steamapps\common\Hearts of Iron IV"

import os
ROOT_PATH = os.path.dirname(os.path.abspath(__file__))
os.chdir(ROOT_PATH + "\states")
filelistmod = os.listdir()

modstringkeys = ("rubber_refinery", "aluminum_mill", "steel_mill")#r56 buildings, change to tuple() to use for vanilla
numkeys = ("id", "infrastructure", "industrial_complex", "arms_factory", "synthetic_refinery", "air_base", "anti_air_building", "radar_station", "manpower", "local_supplies", "steel", "tungsten", "oil", "rubber", "aluminium", "chromium") #excluding nuclear because obviously it isnt a typical starting one
sumkeys = ("naval_base", "bunker", "coastal_bunker") #can be spread across several province entries
stringkeys = ("owner", "state_category", "add_core_of", "add_claim_by")
validkeys = numkeys + sumkeys + stringkeys + modstringkeys
statistics = list()
statenumbers = list()
getmissingstateinfo = False
for filename in filelistmod:
    extract = filename.split("-") #merely filtering on digits gives issues if the state name has a number
    statenumbers.append(int(extract[0]))
missingstates = list()
for num in range(1, max(statenumbers)):
    if num not in statenumbers:
        missingstates.append(num)
if len(missingstates) > 0:
    getmissingstateinfo = True #change this if you dont want vanilla to be checked
    print("The following states {} are not overwritten, assuming this mod has more states than vanilla: ".format(len(missingstates)) + str(missingstates))


def extract_statistics(filelist):
    for file in filelist:
        dupecore = False
        dupeclaim = False
        statedict = dict.fromkeys(validkeys, None)
        for key in sumkeys + numkeys + modstringkeys:
            statedict[key] = 0
        corelist = list()
        claimlist = list()
        #the following can be in individual provinces so should be summed
        with open( file ) as fp:
            currtext = fp.read()
            currtext = currtext.replace(" ", "") #remove spaces
            currtext = currtext.replace("\t", "") #remove spaces
            currstat = currtext.split("\n") #split lines, used to seperate statistics
            for statistic in currstat:
                tempsplit = statistic.split("#")
                tempsplit = tempsplit[0].split("=") #only if the comment comes after value and key will it be ignored
                if len(tempsplit) > 1:
                    key = tempsplit[0]
                    value = tempsplit[1]
                    if key in validkeys:
                        if key in numkeys:
                            statedict[key] = int(float(value)) #float conversion converts commas into a format the integer conversion then can remove
                        elif key in sumkeys:
                            statedict[key] += int(float(value))
                        elif key == "add_claim_by" and not value in claimlist:
                            claimlist.append(value)
                        elif key == "add_claim_by" and value in claimlist: #note files with dupe
                            dupecore = True
                        elif key == "add_core_of" and not value in corelist:
                            corelist.append(value)
                        elif key == "add_core_of" and value in corelist: #note files with dupe
                            dupecore = True
                        else:
                            statedict[key] = value.replace("\"", "") #copy over strings, but remove any bracket anomalies
        if dupecore == True and not "KUR" in corelist: #exclude conditional cores on Kurdistan, which are correct from basegame
            print("Duplicate core entry in state file " + str(statedict["id"]))
        if dupeclaim == True:
            print("Duplicate claim entry in state file " + str(statedict["id"]))
        statedict["add_core_of"] = corelist
        statedict["add_claim_by"] = claimlist
        statistics.append(statedict)

extract_statistics(filelistmod)
if getmissingstateinfo and os.path.exists(HOIIVPath): #go get vanilla files
    os.chdir(HOIIVPath + "\history\states")
    filelistgame = os.listdir()
    gamefilestocheck = list()
    for gamefile in filelistgame:
        gamefilesplit = gamefile.split("-")
        if int(gamefilesplit[0]) in missingstates:
            gamefilestocheck.append(gamefile)
    if len(gamefilestocheck) == len(missingstates):
        print("Successfully found vanilla files for unoverriden states")
    extract_statistics(gamefilestocheck)
elif getmissingstateinfo:
    print("Invalid game directory")

UsePandas = True
SavetoFile = True
if UsePandas:
    import pandas as pd #use "pip install pandas" in console if you are using something which doesnt auto-download
    df = pd.DataFrame(statistics)
    sorted_df = df.sort_values(by='id')
    print(sorted_df.to_string(index = False))
    if SavetoFile:
        os.chdir(ROOT_PATH)
        sorted_df.to_csv('output.csv', index = False)
else:
    print(statistics)
