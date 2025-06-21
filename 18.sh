#!/bin/bash

function sum()
{
    num2=20
    RESULT=$(($num1+$num2))
    echo "result is $RESULT"
    # num1 value is from global varibale
    # num2 value is from local variable
}

echo "enter num1"
read num1 # global variable

echo "enter num2"
read num2 # global veriable

sum
