#!/bin/sh
echo "Enter the marks"
read mark
if [ $mark -ge 90 ]
then
   echo "Grade Obtained is A"
elif [ $mark -ge 80 -a $mark -lt 90 ]
then
   echo "Grade Obtained is B"
elif [ $mark -ge 70 -a $mark -lt 80 ]
then 
   echo "Grade Obtained is C"
elif [ $mark -ge 60 -a $mark -lt 70 ]
then
   echo "Grade Obtained is D"
else
   echo "Fail CLass"
fi

