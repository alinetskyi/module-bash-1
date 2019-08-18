#!/bin/bash

input={"$@"}

for arg;
do
    result=$(ls -R | grep "$arg")
    if [[ -n $result ]];
    then
        echo -e "$result"
    else
        echo 'the searched PATH is unexisting'
    fi
done


