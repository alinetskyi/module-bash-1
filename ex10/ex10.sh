#!/bin/bash

if ! [ -f $1 ]
then
	echo ""
	exit 1
fi

while [ $# -ne 0 ]
do
	res=$(awk 'END {print NR}' $1)
	echo "$res $1"
	shift
done

exit 0
