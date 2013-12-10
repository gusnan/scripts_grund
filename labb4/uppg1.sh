#!/bin/bash
# Laboration 4, Uppgift 1
# 
# Skriv ett skript som ber användaren om två tal och skriver ut de två talen med alla fyra
# räknesätten, ungefär så här:
# 
# Mata in tal1: 10
# Mata in tal2: 5
# 10 + 5 = 15
# 10 – 5 = 5
# 10 * 5 = 50
# 10 / 5 = 2, rest: 0

tal1=0;
tal2=0;

read -p "Mata in ett tal1: " tal1;
read -p "Mata in ett tal1: " tal2;

# Först addition
let addition="$tal1+$tal2";
echo "$tal1 + $tal2 = $addition";

# Subtraktion
let subtraktion="$tal1-$tal2";
echo "$tal1 - $tal2 = $subtraktion";

#Multiplikation
let multiplikation="$tal1*$tal2";
echo "$tal1 * $tal2 = $multiplikation";

#Sist division med rest
let division="$tal1/$tal2";
#Rest
let rest="$tal1%tal2";
echo "$tal1 / $tal2 = $division, rest: $rest";
