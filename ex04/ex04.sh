#!/usr/bin/

if [ "$#" -lt 2 ]; 
then
  echo ''
  exit 1
else  
  res=$(find "$2" -type f |xargs grep -n -Eo "$1" | cut -d : -f 1);
  filename="$(basename -- $2)"
  echo "$filename";
  echo "$res";
fi
