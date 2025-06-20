#!/bin/bash

TIME_STAMP=$(date+"%d-%m-%y")

function rootValidate()
{
    if [ $UID -ne 0 ]
    then
        echo "you root access to run the script"
        exit 1
}

rootValidate()
