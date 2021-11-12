#!/bin/sh
echo "enter the basic salary"
read bsal
echo "enter the hra in percent"
read hra
echo "enter the other allowance"
read oth
echo "Final Salaray is "
echo "scale=2; ($bsal + (($hra * $bsal) / 100) + (($oth * $bsal) / 100))" | bc