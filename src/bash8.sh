#!/usr/bin/env bash

echo "Ange ditt poäng:"
	read points

if [ $points -ge 90 ]; then
	echo "Ditt betyg är MVG (Mycket Väll Godkänd)"
elif [ $points -ge 65 ]; then
	echo "Ditt betyg är VG (Väll Godkänd)"
elif [ $points -ge 50 ]; then
	echo "Ditt betyg är G (Goodkänd)"
else	
	echo "Ditt betyg är IG (Icke Godkänd)"
fi
