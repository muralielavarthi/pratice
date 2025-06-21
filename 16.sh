#!/bin/bash

echo "enter directory path"

read DIR_PATH

if [ -d $DIR_PATH ]
then
    echo "Directory path is valid counting....."
else
    echo "Directory path is invalid exiting.."
    exit 1
fi

COUNT=$(ls $DIR_PATH | wc -l)

echo "files count is: $COUNT"
