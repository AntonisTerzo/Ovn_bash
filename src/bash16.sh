#!/usr/bin/env bash

validera_tal() {
	tal=$1

	if ! [[ "$tal" =~ ^[0-9]*$ ]]; then
		echo "Fel: '$tal' är inte ett giltigt heltal"
		return 1
	fi

	if [ $tal -lt 10 ] || [ $tal -gt 100 ]; then
		echo "Fel: Talet måste vara mellan 10 och 100!"
		return 1
	fi

	return 0
}

summa() {
	echo $(($1 + $2))
}

differens() {
	echo $(($1 - $2))
}

produkt() {
	echo $(($1 * $2))
}

kvot() {
	if [ $2 -eq 0 ]; then
		echo "Fel: Division med noll!"
		return 1
	fi
	echo $(($1 / $2))
}

# Huvudprogram

echo "Mata in tal1:"
read tal1

echo "Mata in tal2:"
read tal2

# Validera talen

if ! validera_tal "$tal1"; then
exit 1
fi

if ! validera_tal "$tal2"; then
	exit 1
fi
# Kontrollera division med noll
if [ $tal2 -eq 0 ]; then
	echo "Fel: Tal2 kan inte vara 0 (division med noll)!"
	exit 1
fi

# Beräkningar
echo "Summan : $(summa $tal1 $tal2)"
echo "Differens : $(differens $tal1 $tal2)"
echo "Produkt : $(produkt $tal1 $tal2)"
echo "Kvot : $(kvot $tal1 $tal2)"
