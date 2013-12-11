# Laboration 4, Uppgift 2
# 
# Skriv ett skript som frågar användaren om hon vill konvertera från kronor 
# till dollar och tvärtom.
#
#	Vill du konvertera från kronor eller dollar [k|d]: k
#	Hur många kronor: 100
#	100 kronor är 63 dollar

konvertera_vad="";

# Jag räknar med att en dollar är 7 kronor pga att flyttal 
# funkar "sådär" i bash...
aktuell_dollar_kurs=6.5;


# Mata in om vi vill konvertera från dollar eller kronor
read -p "Vill du konvertera från kronor eller dollar [k|d]: " konvertera_vad;


# Gör kontrollen
if [ "$konvertera_vad" = "k" ]; then
	echo "Konverterar från kronor till dollar";

	# Läs in hur många kronor vi har
	read -p "Hur många kronor: " kronor;
	
	#Gör beräkningen
	#let dollar=($kronor/aktuell_dollar_kurs) | bc;
	dollar=$(echo " scale=4; $kronor / $aktuell_dollar_kurs" | bc);
	
	echo "$kronor kronor är $dollar dollar.";

elif [ "$konvertera_vad" = "d" ]; then
	echo "Konverterar från dollar till kronor";

	# Läs in hur många dollar vi har
	read -p "Hur många dollar: " dollar;
	
	# Gör beräkningen
	kronor=$(echo "$dollar * $aktuell_dollar_kurs" | bc);
	# let kronor=$dollar*aktuell_dollar_kurs;
	echo "$dollar dollar är $kronor kronor.";

else
	# Vi har inte matat in varken k eller d - resulterar i felmeddelande:
	echo "Du måste välja antingen k (Kronor) eller d (Dollar).";
	exit;
fi
