#!/bin/bash

echo "enter x1"
read X1
echo "enter x2"
read X2

X2=$(($X1+$X2))

echo "sum of x1 and x2 is: $X2"

