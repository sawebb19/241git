# GLOSSARY

## Contains functions, what they do, flags for them, and some other general notes.
## NOTE: May occasionally be missing the letter "n". My "n" keyswitch is broken.

**mv** - Move. Moves directories and files into new directories.

**stat** - Statistics. Gives statistics about a file.

**touch** - Touch. Updates the timestamp of a file. Also creates a fie if given a non-existant filename.

**rm** - Remove. Removes a file. Will only delete empty directories unless '-r' flag is given.

- '-r': Recursive removal. Will delete a directory and everything inside it.
- '-f': Force removal. Will delete a file without asking for confirmation.

'''
Consider the directory /home/webbsamu/Music/GYBE/ADBA/ with files like "Mladic" and "We Drift Like Worried Fire". Let's also consider these are lossy .mp3 files
and not worth our time, so we want to delete this folder to make way for our .flac version of the album. Assuming our pwd is .../GYBE/, we can use _rm -rf ADBA to
delete it and the lossy music files.

**mkdir** - Make directory.

**file** - File. Gives short synopsis of the kind of file that was passed to it.

**cd** - Change directory. Changes present working directory to given directory. Use without input to take to home directory.

**pwd** - Present working directory. Returns filepath for directory you are currently in.

**cp** - Copy. Will oonly copy empty diectories unless '-r/-a' flag is given.

- '-d': No deference. Preserves links.
- '-p': Preserve. Preserves file attributes when possible.
- '-R': Recursive copy. Will copy a directory and everything in it.
- '-a': Archive. Combines functionality of -d/-p/-A


**mount** - Mount. Shows all mount points. Will also mount folders passed to it.

**umount** - Unmount. Unmounts folders passed to it

**echo** - Echo. Prints what is passed to it.

**chmod** - 
