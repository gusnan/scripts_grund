
# Vi initierar båda variabler till värdet 0
variabel1=0;
variabel2=0;

# Läs in värden på variablerna från användaren:
read -p "Mata in värde 1: " variabel1;
read -p "Mata in värde 2: " variabel2;

# Skriv ut bägge variablers värde:
echo "Variabel ett har värdet $variabel1";
echo "Variabel två har värdet $variabel2";

# Har variablerna samma värde?
if [ "$variabel1" -eq "$variabel2" ]; then
	echo "Variablerna har samma värde!";

# Är variabel1 större än variabel2?
elif [ "$variabel1" -gt "$variabel2" ]; then
	echo "Variabel1 är större än variabel2.";

# Är variabel1 mindre än variabel2? (Vi behöver inte
# kontrollera detta, eftersom det är enda alternativet som
# är kvar då föregående kontroller i if-satsen är genomförda 
# och falska.
else
	echo "Variabel1 är mindre än variabel2.";
# Slutet på hela if-satsen.
fi
