#!/bin/bash

echo "Enter DIR path:"
read DIR_PATH

if [ -d "$DIR_PATH" ]; then
    echo "Directory path is valid, checking error files"
else
    echo "Directory path invalid, exiting!"
    exit 1
fi

echo "Finding text files"
OUTPUT_FILE="output.txt"
> "$OUTPUT_FILE"  # This truncates or creates the file
echo "Created final output file"

# Store the result of find command in a variable safely using command substitution
TEXT_FILES_LIST=$(find "$DIR_PATH" -type f -name "file*")

# Iterate over each file
for FILE in $TEXT_FILES_LIST; do
    if grep -qi "error" "$FILE"; then
        echo "$FILE" >> "$OUTPUT_FILE"
    fi
done

echo "Text files containing the word 'error':"
cat "$OUTPUT_FILE"
