#!/bin/bash

CURRENT_DATE=$(date +"%d")

if [ $(($CURRENT_DATE%2)) -eq 0 ]
then
    echo "Current date: $CURRENT_DATE is even number"
fi

