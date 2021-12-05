#!/bin/sh
echo "Enter the temperature in Celcius"
read celsius
echo "Temperature in fahrenheit is"
echo "scale=3; (((9 * $celsius) / 5) + 32)" | bc

