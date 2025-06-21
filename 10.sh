#!/bin/bash

echo "creating dummy directory...."

mkdir dummy

cd dummy

for i in {1..5}
do
    touch "file-$i"
done

