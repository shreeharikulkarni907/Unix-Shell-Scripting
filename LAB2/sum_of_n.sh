#!/bin/sh
echo "Enter the value of N"
read n
sum=0
i=0
while [ $i -le $n ]
do
  sum=`expr $sum + $i`
  i=`expr $i + 1`
done
echo "Sum of N Natural Number is $sum"
