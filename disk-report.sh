#!/bin/bash

FILE="/tmp/readonly.txt"

if [ "$EUID" -eq 0 ]
then
	touch "$FILE"
	if [ $? -eq 0 ]
	then
		df -h >> "$FILE"
		if [ $? -eq 0 ]
		then
			chmod 444 "$FILE"
			if [ $? -eq 0 ]
			then
				echo "Free disk space has been added to $FILE and it is now read-only for everyone"
			else
				echo "Couldn't add free disk space or make it read-only for everyone"
				exit 1
			fi
		else
			echo "Couldn't add free disk space to $FILE"
			exit 1
		fi
	else
		echo "Creating file unsuccessful"
		exit 1
	fi
else
	echo "You need to have root privileges to run this"
	exit 1
fi
