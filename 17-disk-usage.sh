#!/bin/bash

DISK_USAGE=$(df -ht | grep -vE 'tmp|file')
DISK_THRESOLD=1
message=""

while IFS= read line
do
    usage=$(echo line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo line | awk '{print $1F}')
    if [ $usage -gt $DISK_THRESOLD ]
    then
        message+="High Disk Usage on $partition: $usage"
    fi
done <<< $DISK_USAGE