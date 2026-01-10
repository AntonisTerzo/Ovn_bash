#!/usr/bin/env bash

echo "Ange ett tal mellan 1 och 10:"
	read tal

if [ $tal -ge 1 ] && [ $tal -le 10 ]; then
	echo "Bra jobbat! $tal är ett giltigt tal!"
else 
	echo "Är du dum u huvudet? $tal är ju inte mellan 1 och 10!"
fi
