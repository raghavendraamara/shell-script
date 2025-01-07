#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR :you dont have sudo access"
    exit 1
fi
dnf list installed mysql #checking if mysql is there
if [ $? -ne 0 ]
then
   dnf install mysql -y
   if [ $? -ne 0 ]
   then
       echo "MYSQL INSTALLATION IS .... FAILURE"
       exit 1
    else
        echo "MYSQL INSTALLATION IS .... SUCCESS"
    fi
else
    echo "MYSQL IS ALREADY INSTALLED"
fi
dnf list installed git    #checking git is installed or not
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "INSTALLING GIT IS .... FAILURE"
        exit 1
    else
        echo "INSTALATION OF GIT .... SUCCESSFUL"
    fi
else
   echo "GIT IS ALREADY INSTALLED"
fi
                      