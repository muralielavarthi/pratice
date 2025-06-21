#!/bin/bash

echo "enter username and password"

read USER_NAME

read PASSWORD

if [ $USER_NAME == "admin" ] && [ $PASSWORD == "admin" ]   
then
    echo "login succesfull"
else    
    echo "login unsuccesfull"
fi
