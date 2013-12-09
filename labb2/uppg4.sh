#!/bin/bash


Color="Grön";


read -t 3 -p "Vilken är din favoritfärg? " Color


Color=${Color:="Röd"}

echo "Din favoritfärg är $Color.";

