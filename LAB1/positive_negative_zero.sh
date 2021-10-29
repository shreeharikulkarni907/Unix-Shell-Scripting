#!/bin/sh
if [ $1 -gt 0 ]
then
        echo "Number is Positive"
        exit 0
elif [ $1 -lt 0 ]
then
        echo "Number is Negative"
        exit 0
else
        echo "Number is zero"
        exit 0
fi