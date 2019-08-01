#!/bin/bash

array+=($@)

for i in "${array[@]}";
do
    result=$(ls -R | grep "$i")
    if [[ -n $result ]];
    then
        echo -e "$result"
    else
        echo 'the searched PATH is unexisting'
    fi
done

exit 0
