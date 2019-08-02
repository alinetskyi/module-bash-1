#!/bin/bash

if [[ $# != 1 ]];
then
    echo 'Too many(few) arguments'
    exit 1
fi

if [[ ! -f $1 ]];
then
    echo 'Error..'
    exit 1
fi

numbers=('zeroes,' 'ones,' 'twoes,' 'threes,' 'fours,' 'fives,' 'sixs,' 'sevens,' 'eights,' 'nines')
digits=$(grep -o '[0-9]' "$1")
for ((i=0; i<10; i++));
do
{
    result=$(grep -o "$i" "$1" | wc -l )
   if [[ $i == 9 ]];
   then
       printf "$result ${numbers[$i]}"
    else
        printf "$result ${numbers[$i]} "
    fi
}
done

exit 0
