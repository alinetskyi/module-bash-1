#!/bin/bash
if [[ $# -eq 0 ]] ; 
then
    echo ''
    exit 1
fi
for word in $2 $3 $4; 
do
res1=$(grep -o "$word" "$1" | wc -l)
echo "$word $res1"
if [ $res1 -gt 0 ]
then
res2=$(grep -n "$word" "$1" | cut -d : -f 1)
echo "$res2"
fi
done;





