#!/usr/bin/env bash

echo "Ange första talet:"
read tal1

echo "Ange andra talet:"
read tal2

if [ $tal1 -eq $tal2 ]; then
	echo "Talen är lika ($tal1 = $tal2)"
elif [ $tal1 -gt $tal2 ]; then
	echo "Talen är inte lika. $tal1 är större än $tal2"
else
	echo "Talen är inte lika. $tal1 är mindre än $tal2"
fi
