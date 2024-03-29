#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

    echo "script started executing at $TIMESTAMP" &>> $LOGFILE
VALIDATE(){
    if [ $1 -ne 0]
    then
        echo -e "$R... Failed $N"
    else
        echo -e "$G... Success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: $R Please run this script eith root access $N"
    exit 1 # you can give greater than 0
else
    echo "you are root user"
    fi # fi means reverse of if, indiacating condition end
 
#echo "All arguments passed $@"
# git mysql postfix net-tools 
# package=git for first time

for package in $@
do
    yum list installed $package &>> $LOGFILE # check installed or not
    if [ $? -ne 0 ] # if not installed
    then
        yum install $package -y &>> $LOGFILE # install the package
        VALIDATE $? "installation of $package" # validate
    else
        echo -e "$package is already installed... $Y Skipping $N"
    fi
done