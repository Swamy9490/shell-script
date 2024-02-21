#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1*$NUMBER2))

echo "Total:: $SUM"

echo "All args passed:: $@"

echo "How many args:: $#"

echo "Script name:: $0"