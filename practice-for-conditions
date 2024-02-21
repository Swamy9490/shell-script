#!/bin/bash

ID=$( id -u )

VALIDATE(){
if ($1 -ne 0)
    echo "Error:: $2... Failed"
    exit 1
else
    echo "$2...Success"
    fi
}
if [ $ID -ne 0]
echo "Error:: Please run this script with root access"
exit 1 # please run this script with root access

else
    echo "you are root user"
    fi # fi means reverse of if indicating condition end

yum install MySQL -y

VALIDATE $? "Installing MySQL"

yum install GIT -y

VALIDATE $? "Installing GIT"

