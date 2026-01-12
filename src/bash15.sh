#!/usr/bin/env bash

linje() {
	length=$1

	for ((i=1; i<=length; i++)); do
		echo -n "*"
	done
	echo ""
	}

if [ $# -gt 0 ]; then
	linje $1
else
	linje 20
fi
