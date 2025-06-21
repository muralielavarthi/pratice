#!/bin/bash

echo "enter the directory path"

read $DIR_PATH

if [ -d $DIR_PATH ]
then
    echo "valid directory, continuing..."
else
    echo "invalid director, exited!"
    exit 1
fi

echo "creating output file"
touch output_file.txt

echo "finding text files containing error string"

TEXT_FILES_LIST=$(find "$DIR_PATH" -type f -name "file*")

for file in $TEXT_FILES_LIST
do
    if grep -i "error" $file
    then
        echo $file>>output_file.txt
    fi
done

echo "printing file containing error string"

cat output_file.txt
