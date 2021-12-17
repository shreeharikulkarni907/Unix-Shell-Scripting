#!/bin/sh
echo "Enter the filename"
read fname

word_count=`wc -w $fname`
w_c=`echo $word_count | cut -f 1 -d " "`
echo $w_c
line_count=`wc -l $fname`
character_count=`wc -c $fname`
i=1
while [ $i -le $w_c ]
do
  exp=`cut -d " " -f $i $fname`
 
  case "$exp" in
  
  [0-9]) w_c=`expr $w_c - 1`;;
  
  [*/^,.()]) w_c=`expr $w_c - 1`;;
  
  esac
  
  i=`expr $i + 1`
done
echo $w_c




