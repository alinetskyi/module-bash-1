#!/bin/bash

if [[ $# != 2 ]] || [[ ! -f $2 ]];
then
    echo 'Error..'
    exit 1
fi

if [[ $1 == -e ]] || [[ $1 == --email ]];
    then
        result=$(grep -Eio '^([a-z0-9_\-\.\+]+)@{1}[a-z0-9_\-\.\+]+\.([a-z])+' "$2")
elif [[ $1 == -u ]] || [[ $1 == --url ]];
    then
    result=$(grep -Eio '^(http://|https://)[a-z0-9_\.\+\/]+' "$2")
else
    exit 1
fi

if [[ -z $result ]];
then
    exit 1
else
    echo "$result"
fi
exit 0
