#!/bin/sh
echo "Enter the value of N"
read n
sum=0
i=0
while [ $i -le $n ]
do
  sum=`expr $sum + $i`
  i=`expr $i + 2`
done
echo "Sum of N Even Number is $sum"
