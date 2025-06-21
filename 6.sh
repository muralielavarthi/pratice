#!/bin/bash

echo "enter date"

read i

CURRENT_DATE=$i

if [ $(($CURRENT_DATE%2)) -eq 0 ]
then
    echo "Current date: $CURRENT_DATE is even number"
else
    echo "not even day"
fi

