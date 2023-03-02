#!/bin/bash
#Script to add two numbers

#Value of number one
NUM1=11

#Value of number two
NUM2=12

#Total
TOTAL=$(($NUM1+$NUM2))

#Print the result
echo "##########################################"
printf "%s %d\n" "The result is: " $TOTAL
echo "##########################################"

