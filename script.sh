#!/bin/bash
#Script to add two numbers

#Value of number one
NUM1=${1:-0}

#Value of number two
NUM2=${2:-0}

# Third value
NUM3=${3:-0}

# Fourth value
NUM4=${4:-0}

#Fifth parameter
NUM5=${5:-0}

#Total
TOTAL=$(($NUM1+$NUM2+$NUM3+$NUM4+$NUM5))

#Print the result
echo "##########################################"
printf "%s %d\n" "The result is: " $TOTAL
echo "##########################################"

