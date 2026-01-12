#!/usr/bin/env bash

val=$1
temp=$2

if [ "$val" = "F" ] || [ "$val" = "f" ]; then
	celsius=$(echo "scale=0; ($temp - 32) * 5 / 9" | bc)
	echo "$temp grader Fahrenheit är $celsius grader Celsius"

elif [ "$val" = "C" ] || [ "$val" = "c" ]; then
	fahrenheit=$(echo "scale=0; ($temp * 9 / 5) + 32" | bc)
	echo "$temp grader Celsius är $fahrenheit grader Fahrenheit"

else
	echo "Ogiltligt val!"
	echo "Användning: $0 [C/F] [temperatur]"
	echo "Exempel: $0 c 0"

fi
