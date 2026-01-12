#!/usr/bin/env bash

echo "Mata in tal1:"
read tal1

echo "Mata in tal2:"
read tal2

addition=$(($tal1 + $tal2))
subtraktion=$(($tal1 - $tal2))
multiplikation=$(($tal1 * $tal2))
division=$(echo "scale=2; $tal1 / $tal2" | bc)
rest=$(($tal1 % $tal2))

echo "$tal1 + $tal2 = $addition"
echo "$tal1 - $tal2 = $subtraktion"
echo "$tal1 * $tal2 = $multiplikation"
echo "$tal1 / $tal2 = $division, rest $rest"

