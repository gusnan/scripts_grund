# Laboration 4, Uppgift 3
#
# Skriv några skript där du använder dig av dollarsign substitutions. Kolla även 
# i boken efter flera varianter! Använd din fantasi och använd allt som du lärt 
# dig tidigare i kursen för att göra ett kul skript! Redogör för minst ett 
# skript i labbrapporten.

#En exempelsträng
fil="$1";

echo "Filnamn: $fil!";

test_string1="Hej";
test_string2="Då";

echo "Variabler som är definierade som börjar på TEST:";
echo "${!TEST*};"

echo "Hur lång är strängen som är lagras i test_string1?: ";
echo "Jo, ${#test_string1} tecken, strängen är ju 'test_string1'";

echo ${test_string2};

echo "Test var 2: $test_string2...";


# echo ${VARIABEL:=hej} sätter endast VARIABEL om den är definierad och tom,
# echo ${VARIABEL:-hej} sätter ett defaultvärde om den inte är definierad.


echo "super_tester1: ${super_tester1:-hej}.";
echo "${super_tester1}";

echo "super_tester2: ${super_tester2:=hej}.";
echo "${super_tester2}";

