#!/bin/bash

FILE=$1
array+=($@)

if [[ ! -f $FILE ]];
then
    exit 1
fi

for i in {1..3};
do
    result=$(grep -o ${array[$i]} $FILE | wc -l)
    echo -e "${array[$i]} $result"
    result=$(grep -o -n ${array[$i]} $FILE | cut -f 1 -d ":")
    if [[ -n $result ]];
    then
        echo -e "$result"
    fi
done

exit 0
