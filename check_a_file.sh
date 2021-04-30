#This script check either a home and .bash_history exist and its type i.e either file or directory
# -d file: check if file exists and is a directory
# -e file : Checks if file exists
# -f file : Checks if file exists and is a file
# -r file : checks if file exists and is readable
# -s file : Checks if file exists and is not empty
# -w file : checks if file exists and is writable
# -x file : Checks if file exists and is executable
# -0 file : Checks if file exists and is owned by the current user
# -G file : Checks if file exists and the default group is the same as the current user
# file1 -nt file2 : Checks if file1 is newer than file2
# file1 -ot file2 : Checks if file1 is older than file2





#! /bin/bash

#check is it a file
if [ -e $HOME ]
then
	echo -e "The object exists, is it a file?\n"
	if [ -f $HOME ]
	then
		echo -e "Yes!, It is a file\n"
	else
		echo -e "No!, It is not a file\n"

		if [ -f $HOME/.bash_history ]
		then
			echo -e "But this is a file!\n"
		fi
	fi
else
	echo "Sorry the object does not exists"
fi
