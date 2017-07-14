#!/bin/bash


# This script is ran after the ./main.sh to aggregate the results in the temp folder
echo "Your Result(s) are below:"

findtext="Your random output is "
findfile="*.txt"

cd ./temp
grep "$findtext" $findfile
cd ..