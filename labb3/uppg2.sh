#!/bin/bash
# Uppgift 2
#
# Skriv ett skript som försöker öppna filen recept.txt, kontrollera om filen
# finns, och om den är läs bär eller skrivbar

file_to_check=recept.txt

# Kontrollera om filen finns
if [ ! -e $file_to_check ]; then
	echo "Filen $file_to_check existerar inte!";
else
	echo "Filen $file_to_check finns.";
fi 

# Kontroller om filen är läsbar (Det kommer den inte vara om den inte existerar)
if [ -r $file_to_check ]; then
	echo "Filen $file_to_check är läsbar.";
fi

# Sist kontrollerar vi om den är skrivbar.
if [ -w $file_to_check ]; then
	echo "Filen $file_to_check är skrivbar.";
fi
