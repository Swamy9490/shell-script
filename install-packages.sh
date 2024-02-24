#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error:: $R Please run this script eith root access $N"
    exit 1 # you can give greater than 0
else
    echo "you are root user"
    fi # fi means reverse of if, indiacating condition end
 
    echo "All arguments passed $R