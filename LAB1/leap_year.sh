#!/bin/sh
echo  "Enter the year"
read  year
val1=4
val2=100
val3=400
check_val=0
a=`expr $year % $val1`
b=`expr $year % $val2`
c=`expr $year % $val3`

if [ $c -eq $check_val ]
then
        echo "Year Is Leap Year"
        exit 0
elif [ $b -eq $check_val ]
then
        echo "Year is not a leap year"
        exit 0
elif [ $a -eq $check_val ]
then
        echo "Year is leap year"
        exit 0
else
        echo "year is not a leap year"
        exit 0
fi

