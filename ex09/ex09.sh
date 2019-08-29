#!bin/bash

if [ "$#" -ne 2 ] 
then 
	echo ""
	exit 1
fi

output=""
flag=$1
file=$2

if { [ "$flag" == "-u" ] || [ "$flag" == "--url" ]; };
then
	output=$(grep -o -E "https*:\/\/([[:alnum:]]|\.|\/)+" $file)
elif { [ "$flag" == "-e" ] || [ "$flag" == "--email" ]; };
then
	output=$(grep -o -E  '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$' $file)
fi

if [ -z "$output" ]
then
	exit 1
fi

echo "$output"
exit 0
