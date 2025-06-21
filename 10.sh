#!/bin/bash

echo "creating dummy directory...."

mkdir dummy

echo "entering inside dummy"

cd dummy

for i in {1..5}
do
    touch "file-txt-$i"
done

echo "created file names"

ls -l

