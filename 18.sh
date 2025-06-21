#!/bin/bash

function sum()
{
    RESULT=$(($num1+$num2))
    echo "result is $RESULT"
}

echo "enter num1"
read num1

echo "enter num2"
read num2


sum $num1,$num2