#!/bin/bash

echo "creating output.txt file"
touch output.txt
echo "enter text to print that in file"
echo "press ctrl+D to save and exit"

while read line
do
    echo $line>output.txt
done

echo "printing content of file"
cat output.txt