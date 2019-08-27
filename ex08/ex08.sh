#!bin/bash

if [ $# -eq 0 ] || [ $# -gt 1 ];then
	echo "Too many(few) arguments"
	exit 1
fi

filename=$1

if ! [ -f "$filename" ];then
	echo "Error.."
	exit 1
fi

numbers=('zeroes' 'ones' 'twoes' 'threes' 'fours' 'fives' 'sixs' 'sevens' 'eights' 'nines')

for ((i=0; i<9; i++));
do
	printf "$(grep -o "$i" $filename | wc -l)"
	printf " ${numbers[$i]}, "
done
printf "$(grep -o "$i" $filename | wc -l)"
printf " ${numbers[$i]}"
printf "\n"

