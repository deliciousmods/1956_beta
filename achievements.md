# R56 Achievement Documentation

## GFX
The icons you wish to use for the achievement should be stored in: `gfx\interface\achievements`<br>
and the reference to the icons defined in `interface/r56_achievements.gfx` under the Achievement Icons section<br>
Make sure that it follows the same naming conventions as the rest.<br>

## Localisation
All of the localisation is stored in `localisation/r56_achievements_l_english.yml`, simply copy the above entries.

## Interface
Here comes the tricky, messy part. Scroll to the end of `interface/r56_achievements.gui` and copy an above achievement entry, after which you increment all numbers by one and in the third line of the entry you adjust the y position value by adding 90 to the previous number.

## Achievement Trigger
In `events/00_r56_achievements.txt` duplicate the last event, increment the ids and add your conditions into the trigger.

## Scripted GUI
Here, you again simply copy the last in the row of triggers and increment the number.

