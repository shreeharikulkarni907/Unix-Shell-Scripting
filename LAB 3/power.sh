#!/bin/sh
echo "Enter the base"
read base
echo "Enter the power"
read power
i=2
while [ $i -le $power ]
do
  base=`expr $base \* $base`
  i=`expr $i + 1`
done
echo "Result of the power is $base"

