#!/bin/bash
input=( "$@" );
s=0;
flag1=0;
flag2=0;
flag3=0;
flag4=0;
flag_count=0;
for value in "${input[@]}";
do
  if [ "$value" = "-s" ]
  then
    flag1=1;
    let "flag_count=$flag_count+1";
  fi
  if [ "$value" = "-e" ] 
  then
    flag2=1;
    let "flag_count=$flag_count+1";
  fi
  if [ "$value" = "-o" ] 
  then 
    flag3=1;
    let "flag_count=$flag_coumt+1";
  fi
  if [ "$value" = "-m" ] 
  then
    flag4=1;
    let "flag_count=$flag_count+1";
  fi
done

if (((flag_count>1)) || ((flag_count==0)))
then
  echo "Error..";
  exit 1;
fi

for value in "${input[@]}";
do
  if (((flag1 + flag4)>0 ))
  then
    let "s=$s+$value";
  fi
  if (((flag2==1)) && (($value%2==0))) || (((flag3==1)) && (($value%2==1)))
  then
    let "s=$s+$value";
  fi
done

if ((flag4 > 0))
then
  ((s=$s/("$#"-1)));
fi

echo "$s";
