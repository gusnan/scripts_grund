#!/bin/bash
#
# Gör ett betygrättarskript! I en fil finns poängen för varje fråga, ett poäng 
# per rad. Skriptet ska räkna ihop poängen och returnera vilket betyg som ska 
# sättas. G=30 VG=48

total=0;

# Läs rader, en efter en
while read line
do
	if [ ! -z $line ]; then
		# Lägg till värdet på raden till "total"-variabeln
		total=$[ total+ $line];
	fi 
done <betyg.txt # Vi läser från betyg.txt

echo "Totalpoäng: $total";

betyg="IG";

# Vi måste kolla om den är större än (eller lika med) 48 före vi kolla om den 
# är större än (eller lika med) 30, annars så kommer inte kontrollen av 
# VG-betyget göras om redan if-satsen för G är giltig.
if [ $total -ge 48 ]; then
	betyg="VG";
elif [ $total -ge 30 ]; then
	betyg="G";
fi

echo "Ditt betyg blir: $betyg";
