#!/bin/bash

FILE=$2
PATTERN=$1

if [[ -z $2 ]] || [[ -z $1 ]];
then
    exit 1
fi

name=$(find $FILE | cut -f 2 -d "/")
echo "$name"
find $FILE | while read line;
do
   result=$(grep -n "$PATTERN" "$line" | cut -f 1 -d ":")
   echo "$result"
done
exit 0
