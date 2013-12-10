#!/bin/bash
#
# Skriv ett skript som med hjälp av while kontrollerar om filen while.dat finns
# i din hemkatalog. Så länge filen inte finns skall skriptet vänta på den. Öppna 
# en ny terminal och skapa filen med kommandot touch while.dat, skriptet skall 
# skriva ut Filen hittades! när filen skapats.

while [ ! -e ~/while.dat ]; do
	:
done

echo "Filen hittades!";
