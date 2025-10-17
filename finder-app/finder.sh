#!/bin/bash
# Author: Josh Sarath and copilot


filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then
	echo "Not enough parameters"
	exit 1
fi

if [ ! -d $filesdir ]
then
	echo "Error: '$filesdir' is not a dir."
	exit 1
fi

file_count=$(find "$filesdir" -type f |wc -l)

match_count=$(grep -r "$searchstr" "$filesdir" 2>/dev/null |wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count"



