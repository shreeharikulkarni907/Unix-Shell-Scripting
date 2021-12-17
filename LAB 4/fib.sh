#!/bin/sh
echo "Enter the limit"
read limit
a=0
b=1
printf "%d\t" $a
printf "%d\t" $b
i=1
while [ $i -lt $limit ]
do
  c=`expr $a + $b`
  printf "%d\t" $c
  a=$b
  b=$c
  i=`expr $i + 1`
done
printf "\n"


