#!/usr/bin/env bash

echo "Vad är din favoritfärg?"
read -t 5 color

if [ -z "$color" ]; then
	color="röd"
fi

echo "Din favoritfärg är $color."
