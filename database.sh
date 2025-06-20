#!/bin/bash

TIME_STAMP=$(date +"%d-%m-%y")

function rootValidate()
{
    if [ $UID -ne 0 ]
    then
        echo "you need root access to run the script"
        exit 1
    fi
}
function checkexistStatus()
{
    if [ arg1 -ne 0 ]
    then
        echo "$arg2 not installed"
    else
        echo "$arg2 already installed"
    fi
}

rootValidate

dnf list installed mysql-server

checkexistStatus $? "mysql-server"



