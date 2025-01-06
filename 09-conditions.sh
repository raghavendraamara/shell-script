#!/bin/bash
NUM1=$1
NUM2=$2
if [ $NUM1 -gt $NUM2 ];
then
    echo "${NUM1} is greater among two numbers"
elif [ $NUM1 -eq $NUM2 ];
then
   echo "both numbers are equal"
else
    echo "${NUM2} is greater among two numbers"
fi
