#!/bin/bash

echo "enter DIR path"

read DIR_PATH

if [ -d $DIR_PATH ]
then
    echo "directory path is valid, checking error files"
else
    echo "directory path invalid, existing!"
    exit 1
fi

echo "finding text files"
touch output.txt
echo "created final output file"

TEXT_FILES_LIST=find $DIR_PATH -type f -name "*.txt"

while read line
do  
    grep -i "error" $line
    if [ $? -eq 0 ]
    then
        $line>>output.txt
    fi
done

echo "print text files containing "error" string"

cat output.txt