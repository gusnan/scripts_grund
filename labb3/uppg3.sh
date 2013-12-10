# Uppgift 3
#
# Skriv ett skript som ber användaren om ett tal mellan 1 och 10, om användaren 
# skriver ett tal utanför detta område skall den få en sur kommentar av 
# skriptet.


# Vi initierar båda variabler till värdet 0
indata=0;

# Läs in värden på variablerna från användaren:
read -p "Vänligen mata in ett värde: " indata;

if [ "$indata" -gt 10 -o "$indata" -lt 1 ]; then
	echo "Håll dig mellan 1 och 10, din buse!";
fi
