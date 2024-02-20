#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Error:: Please run this script with root access"
else
    echo "You are root user"
fi # means reverse of if,indicating condition end

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "Error:: installing mysql is failed"
    exit 1
else 
    echo "Installing Mysql is Success"
fi

yum install git -y

if [ $? -ne 0 ]
then 
    echo "Error:: installing git is failed"
    exit 1
else 
    echo "Installing git is Success"
fi