# GLOSSARY

## Contains functions, what they do, flags for them, and some other general notes.
***NOTE: May occasionally be missing the letter 'n'. My 'n' keyswitch is broken.***

**mv** - Move. Moves directories and files into new directories.

'''

To move the best song of the 2010's to the folder \~/Music/Best Songs, you would use **mv \~/Music/AWOLNATION/Sail.mp3 \~/Music/Best Songs**. You can do this
in combination with the best album of the 2010's like this **mv \~/Music/AWOLNATION/Sail.mp3 \~/Music/OMAM/My Head is an Animal \~/Music/Best Songs**. To move
the individual songs from "My Head is an Animal" instead of the folder, you can use the syntax **\~/Music/OMAM/My Head is an Animal/\*.mp3** You also rename
files this way like so **mv \~/Baseball/Pitchers/Randy Johnson.txt \~/Baseball/Pitchers/GOAT.txt**

'''

**stat** - Statistics. Gives statistics about a file.

**touch** - Touch. Updates the timestamp of a file. Also creates a fie if given a non-existant filename.

**rm** - Remove. Removes a file. Will only delete empty directories unless '-r' flag is given.

- -r: Recursive removal. Will delete a directory and everything inside it.
- -f: Force removal. Will delete a file without asking for confirmation.

'''
Consider the directory /home/webbsamu/Music/King Crimson/Bad Songs. We want to delete this directory. Since it's empty (obviously), we need to make sure
our pwd is ~/Music/King Crimson, we can delete it with **rm Bad Songs**. If we wanted to delete a folder that had files in it, like ~/Music/Led Zepplin Ripoffs,
we could use **rm -rf Led Zepplin Ripoffs**. -r indicates a recursive delete, and -f indicated that this would occur without confirmation. Once completed, your
file is deleted and you no longer have Greta Van Fleet's discography in your Music folder. 
'''

**mkdir** - Make directory.

**file** - File. Gives short synopsis of the kind of file that was passed to it.

**cd** - Change directory. Changes present working directory to given directory. Use without input to take to home directory.

**pwd** - Present working directory. Returns filepath for directory you are currently in.

**cp** - Copy. Will oonly copy empty diectories unless '-r/-a' flag is given.

- -d: No deference. Preserves links.
- -p: Preserve. Preserves file attributes when possible.
- -R: Recursive copy. Will copy a directory and everything in it.
- -a: Archive. Combines functionality of -d/-p/-A


**mount** - Mount. Shows all mount points. Will also mount folders passed to it.

**umount** - Unmount. Unmounts folders passed to it

**echo** - Echo. Prints what is passed to it.

**chmod** - 
