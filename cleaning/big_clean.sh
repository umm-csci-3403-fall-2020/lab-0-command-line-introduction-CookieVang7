#!/usr/bin/env bash

archive=$1

#create temp directory
temp=$(mktemp -d)

#extract file and put it in it's temp directory
tar -xzf "$archive" -C "$temp"

#capturing current directory
here=$(pwd)

#navigate to temp directory
#|| exit gives the option to exit if cd doesn't work 
cd "$temp" || exit

#keeping the base name of the file
base=$(basename -s .tgz "$archive")

#searching through the extracted file to see which ones to delete
grep "DELETE ME!" -rl "$base" | xargs rm 

#creating a new tar file 
tar -zcf cleaned_"$archive" "$base"

#move new archive to cleaning directory
mv cleaned_"$archive" "$here"

#navigate to another directory and delete scratch directory since it's unneeded
cd "$here" || exit
rm -rf "$temp"
