#!/bin/sh

echo "Enter the First Number"
read num1
echo "Enter the Second Number"
read num2

sum=0
echo "MENU\n 1:Additon\n2:Subbtraction\n3:Multiplication\n4:Division"
echo "Enter Your Choice"
read choice
case "$choice" in
1) sum=`expr $num1 + $num2`;;
2) sum=`expr $num1 - $num2`;;
3) sum=`expr $num1 \* $num2`;;
4) sum=`expr $num1 / $num2`;;
*) echo "Invalid Option"
esac
echo "Result of the operation is $sum"
