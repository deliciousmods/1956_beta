#created by marijn211

import os
import re

logs_folder = os.path.expandvars("%userprofile%\Documents\Paradox Interactive\Hearts of Iron IV\logs")
os.chdir(logs_folder)
with open( "error.log", "r", encoding='utf8' ) as errorlog:
	errorlogtext = errorlog.read()

errorlog_lines = errorlogtext.split("\n")
new_errorlog = []
for error in errorlog_lines:
    if not re.search(".*_plane_icons.*Invalid Scope", error):
        new_errorlog.append(error)

with open( "error.log", "w", encoding='utf8' ) as errorlog:
	errorlog.write("\n".join(new_errorlog))