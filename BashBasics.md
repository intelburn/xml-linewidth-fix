# Summary #

This page is about the basic commands used to execute this script. This could also be used as a basic introduction on navigation in Bash

## The _cd_ Command and Basic File System Navigation ##

The first command used is _cd xml_. This stands for Change Directory to xml. The cd command takes either relative pathing or absolute pathing. Relative pathing assumes that the desired directory is inside of the current directory. It takes the computer a little longer to resolve the path but is easier to type. Absolute pathing always starts with a "/", an example of this is the path to Teriminal.app on a Mac is _/Applications/Utilities/Terminal.app_. The speed difference between the two kinds of pathing is insignificant on a modern computer. The the working directory can be determined using the command _pwd_ (Print Working Directory). Note that the Unix shell is case sensitive so thus _/Applications/Utilities_ is different than _/applications/utilities_. Notable shortcuts when working with Unix directories are: _._ for current directory, _.._ for parent directory, and _~_ for the user's home directory.

The _ls_ command lists items in the directory specified, if no directory is specified then it lists items in the current directory. _ls_ stands for "list". The _ls_ command can also be used to see the permissions for files with the use of the -l argument. Checking the permissions of all files in the current directory is done the _ls -l_ command.

## Wildcards ##

Unix has support for _`*`_ and _?_ wildcards. The _`*`_ wildcard may be used in place of zero or more characters. The _?_ wildcard may be used in place of a single character.

## _chmod_ and Unix File Permissions ##

Unix based systems have three file permissions: Read, Write, and eXecute. They are often abbreviated as rwx. When they are listed it will most likely look like _rwxrwxrwx_ for all permissions granted or _---------_ for all permissions denied. The first three are the permissions for the owner of the file, the second for the group of the file, and the third is everyone else. There are other ways to address file permissions in Unix detailed on this Wikipedia page: http://en.wikipedia.org/wiki/File_system_permissions.

The _chmod_ command is used to change the permissions for a file. _chmod_ stands for CHange MODe. Bellow are some examples of how to use the command.
```
chmod rwxrwxrwx file
chmod +x file
chmod 777 file
```
The first example adds all permissions to the file _file_. Example two adds the eXecutable permission to the file _file_. The third example adds all permissions to the file _file_ using an alternate notation.

## Executing a Script ##

One of the oddities in Unix systems is that the shell does not look to the current working directory for execution of files. To execute a Bash script (assuming that Bash is your current shell, if you understand this you don't need this Wiki) you would use the pattern of _/path/to/script/script.sh_ (Scripts in Unix don't have to end in 