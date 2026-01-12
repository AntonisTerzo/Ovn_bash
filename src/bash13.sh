#!/usr/bin/env bash

if [ $EUID -ne 0 ]; then
	echo "Fel: Detta skript måste köras som root!"
	exit 1
fi

echo "Tömmer latalogen /tmp/"
rm -rf /tmp/*
echo "Katalogen /tmp/ är nu tömd."
