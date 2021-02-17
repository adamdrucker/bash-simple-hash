#!/bin/bash

# While the `md5sum` command exists on its own and performs
# the same task, all this script does is add the most basic
# of input interfaces, then formats the output.

echo -n "Enter the path of the file you wish to hash: "
read INPUT

DIGEST=$(md5sum "$INPUT" | awk -F" " '{print $1}')

echo "Your MD5 hash: "
echo "//////////////"
sleep .5s
echo "File: $INPUT | Hash: $DIGEST"
echo " "
