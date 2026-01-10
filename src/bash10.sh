#!/usr/bin/env bash

echo "Vill du konvertera från Fahrenheit eller Celsius? [F/C]"
read val

if [ "$val" = "F" ] || [ "$val" = "f" ]; then
	echo "Hur många grader Fahrenheit"?
	read temp
	celsius=$(echo "scale=0; ($temp - 32) * 5 / 9" | bc)
	echo "$temp grader Fahrenheit är $celsius grader Celsius."

elif [ "$val" = "C" ] || [ "$val" = "c" ]; then
	echo "Hur många grader Celsius?"
	read temp
	fahrenheit=$(echo "scale=0; ($temp * 9) + 32" | bc)
	echo "$temp grader Celsius är $fahrenheit grader Fahrenheit."

else 
	echo "Ogiltigt val! Skriv F eller C."
fi
