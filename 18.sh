#!/bin/bash

function sum()
{
    RESULT=$(($1+$2))
    echo "result is $RESULT"
    echo $1
    echo $2
}

echo "enter num1"
read num1 

echo "enter num2"
read num2

sum $num1 $num2
