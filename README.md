# 1956_beta
Road to 56 Beta Build

This is the Readme guide for using Github with Road to 56. 

1. Sign up with Github if you haven't already, and request membership / team assignment from Greatexperiment. If you don't do this, you won't be able to write changes to the mod.
2. Download the client from the github site
3. In the program, File -> Clone -> URL -> deliciousmods/1956_beta
4. Set the local directory as your documents > Paradox Interactive > Hearts of Iron IV > mod folder
5. Clone the project and download
6. Move the 1956_beta.mod file from the new folder into the mod folder
7. Under 'current branch' grab whichever one you're assigned to, or create one if you're working on a personal addition to the mod.
9. You can now work from your local version of 56.
10. At anytime you can "Fetch origin" to update your current files with whatever branch you want. Master is the definitive branch, and only editable by Greatexperiment. Beta_edits is the one everyone should be checking their files on.
11. All edits you do will automatically display in the client. You must then select and review all relevant files,
as well as Summarize / Comment where appropriate. You can then "push" the files to the source - the yourusername_edits branch.

The working version of the mod is the beta_edits branch, but you can't edit it directly. Instead you must create a "pull" request on the site. This will mean that someone needs to review and comment your submission before it can be accepted into the beta_edits branch. When it's time for release Greatexperiment will pull from beta_edits into master, and then publish it on Steam. 

You can also, at any time, create "issues" to be tracked on the site. These are basically bug reports and feature requests. 
Be sure to add appropriate labels such as:
1. Confirmed/Unconfirmed (Has the issue been verified or not)
2. Minor/Moderate/Serious (The importance of the issue)
3. Bug (Something that's broken due to a mistake or error)
4. Tweak (A small change or adjustment that should be made, but is not a bug.)
5. Update (Something is outdated)
6. Enhancement (A suggestion for improvement)
 
Please use the following guidelines before submitting a pull request or uploading your edits:
1. Make sure your code is clean and well commented. Even if your code works, it needs to be readable, and organized with proper spacing and indentation. Broken code will be automatically rejected. The German focus tree is a good reference file for this. (although it should really have more comments)
2. Make sure you thoroughly implement AI within your code where needed. This means making sure historical outcomes are about 4 times as likely as ahistorical ones, is_historical_focus_on is in place where relevant, and you use the Sanity scripts in warmaking situations.
3. Never overwrite or clone files from Vanilla unless absolutely needed. In other words, don't just copy the whole technologies.gfx file and append your stuff to the end.
4. Use 56 naming conventions wherever possible. Generally this goes along the lines of r56_portrait_minister_bob_bobson, r56_idea_company_cat_incorporated, r56_laws_gender_total_equality. Basically the r56 prefix, the thing it is, the sub-thing, then the name itself.
5. All graphics must use DXT5 compression and be dds format, as per the Nvidia plugin. It must also follow the standard sizes found in 56, which you can find by looking at the graphic files in the mod itself.

If for some reason you need greater access rights to the Git, or don't understand any of the above, ask Greatexperiment.
