#!/bin/bash

echo "Please enter username:: "

read -s USERNAME #the value entererd above will be automattically attached with USERNAME

echo "Please enter your password:: "
read -s PASSWORD

echo "Username is: $USERNAME, Password is: $PASSWORD" #I am printing just for validation you should not print username and password in scripts