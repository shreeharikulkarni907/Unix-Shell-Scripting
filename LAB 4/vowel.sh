#!/bin/sh
echo "Enter the string"
read str
len=`expr "$str" : '.*'`
i=1
a_count=0
e_count=0
i_count=0
o_count=0
u_count=0
while [ $i -le $len ]
do
  ch=`echo $str | cut -c $i`

  
  case "$ch" in
  
  a|A) a_count=`expr $a_count + 1`;;
  
  e|E) e_count=`expr $e_count + 1`;;
  
  i|I) i_count=`expr $i_count + 1`;;
  
  o|O) o_count=`expr $o_count + 1`;;
  
  u|U) u_count=`expr $u_count + 1`;;
  
  esac
  i=`expr $i + 1`
done
echo "Count Of Vowel A is $a_count"
echo "Count of vowel E is $e_count"
echo "counr of vowel I is $i_count"
echo "count of vowel O is $o_count"
echo "count of vowel U id $u_count"
