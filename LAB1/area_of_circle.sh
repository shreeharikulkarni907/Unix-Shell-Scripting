#!/bin/sh
echo "Enter the radius of the circle"
read radius
num=22
echo "Area of circle is"
echo "scale=2; ($num * $radius * $radius) / 7"  | bc