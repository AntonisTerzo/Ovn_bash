#!/usr/bin/env bash

if [ $# -lt 2 ]; then
	echo " $0: Behöver minst två argument."
	exit 1
fi

echo "Argument 1: $1"
echo "Argument 2: $2"
echo "Totalt antal argument: $#"
