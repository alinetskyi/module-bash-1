#!/bin/bash

if [[ $# != 1 ]] || [[ $1 == "0" ]]
then
    exit 1
fi

data=$(head -n $1 resourses/surnames.txt)
data=$(echo "$data" | grep -v "Q-Chem")
data=$(echo "$data" | sed 's/\.//;s/- / /')


echo "$data"
exit 0