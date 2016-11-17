#!/bin/bash
# Initializes a job slot before running a pre-processing
# Docker container submitted to the DM Challenge.
#
# Tasks:
# - remove files from the preprocessed data directory of a user slot
# - remove files from the scratch directory
#
# Author: Thomas Schaffter (thomas.schaff...@gmail.com)
# Last update: 2016-11-16

rmDirectoryContent() {
	if [ -d "$1" ]; then
		echo "Removing files from $1"
		find $1/ -type f | parallel -m rm -fr {}
		rm -fr $1/*

		#check that it is empty
		if [ "$(ls -A $1)" ]; then
			echo "$arg is still not Empty"
			exit 1
		else
			echo "$1 is Empty"
		fi

	else
		echo "$1 is not a directory"
		exit 1
	fi
}

for arg in $@; do
	rmDirectoryContent $arg
done

echo "Done"
exit 0