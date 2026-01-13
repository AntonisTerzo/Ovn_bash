#!/usr/bin/env bash

datum=$(date +%Y-%m-%d)
backup_fil="/tmp/${USER}.${datum}.tar.gz"

echo "Skapar backup av hemkatalogen $HOME"
echo "Backup sparas som: $backup_fil"

if [ ! -w /tmp ]; then
	echo "Fel: Kan inte skriva till /tmp!"
	exit 1
fi

if [ -f "$backup_fil" ]; then
	echo "Tar bort gammal backup..."
       rm -f "$backup_fil"
fi

tar -czf "$backup_fil" "$HOME" 2>/dev/null
tar_exit=$?

if [ ! -f "$backup_fil" ]; then
	echo "Fel: Backup-filen skapades inte!"
	exit 1
fi

if [ ! -s "$backup_fil" ]; then
	echo "Fel: Backup-filen är tom!"
	rm -f "$backup_fil"
	exit 1
fi

echo "Backup skapad framgångsrikt!"
echo "Filnamn: $backup_fil"
