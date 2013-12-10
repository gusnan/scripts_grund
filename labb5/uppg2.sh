#!/bin/bash
# Laboration 5 - Uppgift 2
#
# Skriv ett skript som låter användaren mata in ett tal mellan 10 och 100, 
# räkna ner talet till 1 med hjälp av en until-loop.

read -p "Vänligen mata in ett nummer mellan 10 och 100: " number;

if [ "$number" -lt 10 ] || [ "$number" -gt 100 ]; then
	echo "Värdet måste vara mellan 10 och 100!";
	exit;
fi

until [ "$number" -eq 0 ]; do
	echo "Räknare: $number";
	number=$[ number - 1 ];
done

echo "Allt klart!";

