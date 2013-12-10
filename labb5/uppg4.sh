#!/bin/bash
#
# Gör ett betygrättarskript! I en fil finns poängen för varje fråga, ett poäng 
# per rad. Skriptet ska räkna ihop poängen och returnera vilket betyg som ska 
# sättas. G=30 VG=48

total=0;

while read line
do
	if [ ! -z $line ]; then
		total=$[ total+ $line];
	fi 
done <betyg.txt

echo "Totalpoäng: $total";

betyg="IG";

if [ $total -ge 48 ]; then
	betyg="VG";
elif [ $total -ge 30 ]; then
	betyg="G";
fi

echo "Ditt betyg blir: $betyg";
