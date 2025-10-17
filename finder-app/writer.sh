#!/bin/bash
#Author Josh Sarath and copilot

if [ $# -ne 2 ]
then 
	echo "Error: two arguments required"
	exit 1
fi

writefile=$1
writestr=$2

dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"
if [ $? -ne 0 ]
then 
	echo "Error: Failed to create dir"
	exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ] 
then
	echo "Error: Failed to write to file"
	exit 1
fi


