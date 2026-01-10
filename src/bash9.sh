#!/usr/bin/env bash

echo "Ange först talet:"
read tal1

echo "Ange andra talet:"
read tal2

addition=$(($tal1 + $tal2))
subtraktion=$(($tal1 - $tal2))
multiplikation=$(($tal1 * $tal2))
division=$(echo "scale=2; $tal1 / $tal2" | bc)

echo "$tal1 + $tal2 = $addition"
echo "$tal1 - $tal2 = $subtraktion"
echo "$tal1 * $tal2 = $multiplikation"
echo "$tal1 / $tal2 = $division"

