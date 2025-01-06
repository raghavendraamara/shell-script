#!/bin/bash
NUM1=$1
NUM2=$2
time=$(date)
SUM=$(($NUM1 + $NUM2))
echo "sum of $NUM1 and $NUM2 is: $SUM"
echo "excuted at : $time"
echo "all variables passed: $@"
echo "number of variables: $#"
echo "script name : $0"
echo "present working directory: $PWD"
echo "home directory of current user : $HOME"
echo "which user is running the script: $USER"
echo "process id of current script: $$"
sleep 60 &
echo "process id of last command in background: $!"

