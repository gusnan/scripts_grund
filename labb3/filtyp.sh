# Uppgift 4
#
# Skriv ett skript som visar vilken typ av fil (vanlig fil, katalog, länk,
# block device) en fil är. Du skall kunna starta skriptet genom att skriva:
# filtyp.sh filensnamn.txt
#
# Filensnamn.txt måste in i skriptet och det gör du till exempel genom att 
# tilldela en #variabel värdet av $1: VAR=$1 . Svaret från skriptet skall vara 
# Filen filnamn.txt är en vanlig fil ...

filnamn=$1;
typ_string="";

if [ ! -e $filnamn ]; then
	echo "Filen finns inte, försök igen!";
	exit;
fi

typ_string="vanlig fil";

if [ -b $filnamn ]; then
	typ_string="block device";
fi

if [ -c $filnamn ]; then
	typ_string="character device";
fi

if [ -d $filnamn ]; then
	typ_string="katalog";
fi


echo "$filnamn är en $typ_string.";
