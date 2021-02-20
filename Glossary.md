# GLOSSARY

## Contains functions, what they do, flags for them, and some other general notes.
***NOTE: May occasionally be missing the letter 'n'. My 'n' keyswitch is broken.***

**mv** - Move. Moves directories and files into new directories. Can also be used to rename files/directories.

```
mv ~/Desktop/The Glass Prison.flac ~/Music/Dream Theater/
mv ~/Desktop/coolFile.txt ~/Desktop/superDuperCoolFile.txt
```

**stat** - Statistics. Gives statistics about a file.

**touch** - Touch. Updates the timestamp of a file. Also creates a fie if given a non-existant filename.

**rm** - Remove. Removes a file. Will only delete empty directories unless '-r' flag is given.

- -r: Recursive removal. Will delete a directory and everything inside it.
- -f: Force removal. Will delete a file without asking for confirmation.

```
rm file.txt
rm -f file2.txt
rm -f emptyDir
rm -rf fullDir 
```

**mkdir** - Make directory.

**file** - File. Gives short synopsis of the kind of file that was passed to it.

**cd** - Change directory. Changes present working directory to given directory. Use without input to take to home directory.

**pwd** - Present working directory. Returns filepath for directory you are currently in.

**cp** - Copy. Will oonly copy empty diectories unless '-r/-a' flag is given.

- -d: No deference. Preserves links.
- -p: Preserve. Preserves file attributes when possible.
- -R: Recursive copy. Will copy a directory and everything in it.
- -a: Archive. Combines functionality of -d/-p/-A.


**mount** - Mount. Shows all mount points. Will also mount folders passed to it.

**umount** - Unmount. Unmounts folders passed to it.

**echo** - Echo. Prints what is passed to it.

**chmod** - Change mode. Changes user(s) permissions relating to a file passed to it according to the permissions passed to it.

- Individual Permissions Formula: chmod abc

	- a = User(s)per
		- u: User. Permissions of the file's owner (me)
		- g: Group. Member's of the file's group
		- o: Others. Everyone else
		- a: All. Everyone

	- b = Application
		- -: Remove. Remove given permissions
		- +: Add. Add given permissions
		- =: Set. Set permissions as given

	- c = Permissions
		- r: Read
		- w: Write
		- x: Execute

- En Masse Permissions Formula: chmod abcdefghi

	- abc: User permissions
	- def: Group permissions
	- ghi: Others' permissions

- Octal En Masse Permissions Formula: cmhod ###

	- Numbers range 0-7
		- 0: No permissions
		- 1: Read permissions
		- 2: Write permissions
		- 3: R+W permissions
		- 4: Execute permissions
		- 5: R+X permissions
		- 6: W+X permissions
		- 7: R+W+X permissions

	- #1: Permissions for User
	- #2: Permissions for Group
	- #3: Permissions for Others
	- ***NEVER GIVE 777 PERMISSIONS***

**ls** - List. Lists files and diretories in pwd.

- -a ~ Lists hidden files
- -l ~ Lists files in long form (includes permissions, owner, owner group, byte size, and timestamp)
- --color ~ Colors list
- -R ~ Recursively lists files
- -S ~ Sorts by file size
- -t ~ Sorts by time & date
- -r ~ Lists files in reverse order

**chown** - Change owner.

`chown [user] [file]`

**chgrp** - Change group.

`chgrp [group] [file]`

**ln** - Link. Creates  link.

**find** - Find files.

- -P ~ Never follow symbolic links (default)
- -L ~ Follow symbolic links

**df** - Disk Free. Shows how much space is filled on the disk

- -h ~ Print sizes in powers of 1024
- -H - Print sizes in powers of 1000

**du** - Disk usage. Shows how much space is filled in a particular directory

- -c ~ Produces grand total
- -h ~ Makes it easier to read
- --exclude=PATTERN ~ Excludes files that match PATTERN
- -t=[-]SIZE ~ Excludes entries smaller than SIZE. Excludes entries larger than SIZE if `-` is entered before SIZE

**more/less** - Displays the contents of a file.

**head/tail** - Displays the first/last part of the file. Defaults to 10 lines.

- -n=[-]NUM ~ Displays first/last NUM lines. Displays all but last/first NUM lines if `-` is entered before NUM

**wc** - Word Count. Prints newlines/word/byte counts for each fole passed to it.

- -c ~ Prints byte counts
- -m ~ Prints character counts
- -l ~ Prints newline counts
- -w ~ Prints word counts

**sort** - Sort. Sorts lines of text files

- -f ~ Ignores case
- -d ~ Consider olnly blanks and alphanumeric characters
- -b ~ Ignore leading blanks
- -n ~ Sort by number
- -r ~ Reverse sort
- --key=KEYDEF ~ Sort by a key defined by KEYDEF
- --output=FILE ~ Output to a file defined by FILE

**uniq** - Unique. Report or omit repeated lines adjacent.

- -c ~ Counts number of occurences of each line.
- -d ~ Only print the lines that have duplicates (opposite of -u)
- -D ~ Only print the lines that have duplicates and all of its duplicates.
- --all-reported ~ Same as -D but separates groups by a newline
- --skip-fields=N ~ Skip N number of lines
- -i ~ Ignore case
- --skip-chars=N ~ Skips N number of chars each line
- -u ~ Only print uniqe lines (opposite of -d)
- --check-chars=N ~ Only compare the first N chars in each line only

**wget/curl** - Both can download stuff from servers. Curl can do more and has more supported protocols. Idk enough to say tho

**rlwrap** - Readline Wrap. Run commands with readline line editing.

**uname** - Prints system information

- -a ~ All following flags
- -s ~ Prints kernel name
- -r ~ Prints kernel release
- -v ~ Prints kernel version
- -m ~ Prints machine hardware name
- -p ~ Prints processor type or "unknown" (Won't print during -a if unknown)
- -i ~ Prints hardware platform (Won't print during -a if unknown)
- -o ~ Prints operating system

**dialog** - Dialog. Display dialog boxes from shell scripts

GitHub SSH Key test commit
