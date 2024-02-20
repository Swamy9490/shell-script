#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Error:: Please run this script with root access"
else
    echo "You are root user"
fi # means reverse of if,indicating condition end
