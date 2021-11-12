#!/bin/sh
echo "Enter the value of N"
read n
sum=0
i=1
while [ $i -le $n ]
do
  sum=`expr $sum + $i`
  i=`expr $i + 2`
done
echo "Sum of N odd Number is $sum"


