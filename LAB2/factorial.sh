#!/bin/sh
echo "Enter the number"
read num
fact=1
number=num
if [ $num -eq 0 ]
then
        echo "Factorial of number is $fact"
fi
while [ $num -ge 1 ]
do
        fact=`expr $fact \* $num`
        #echo $fact
        num=`expr $num - 1`
done
echo "Factorial of number $number is $fact"