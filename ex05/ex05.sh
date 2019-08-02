#!/bin/bash

array+=($@)
sum=0

for i in "${array[@]}";
do
    if [[ $i != *[0-9]* ]] && [[ $i != $1 ]]
    then
        echo 'Error..'
        exit 1
    fi
    if [[ $1 == "-s" ]] || [[ $1 == "-m" ]];
    then
        sum=$(echo  ""$sum" + "$i"" | bc)
    elif [[ $1 == "-e" ]];
    then
        if [[ $((i % 2)) == 0  ]];
        then
            sum=$(echo  ""$sum" + "$i"" | bc)
        fi
    elif [[ $1 == "-o"  ]];
    then
        if [[ $((i % 2)) != 0 ]];
        then
            sum=$(echo ""$sum" + "$i"" | bc)
        fi
    else
        echo 'Error..'
        exit 1
fi
done

if [[ $1 == "-m" ]];
then
    sum=$(echo ""$sum" / "$(($# - 1))"" | bc)
fi

echo "$sum"

exit 0

