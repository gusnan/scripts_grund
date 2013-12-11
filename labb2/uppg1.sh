#!/bin/bash
#Skriv ett skript som skriver ut ”Hej Johan, du befinner dig i katalogen: 
# /home/Johan.” där Johan är användarnamnet på inloggad användare och: 
# /home/Johan är den katalog användaren befinner sig i när han kör skriptet.


echo "Hej $USER, du befinner dig i katalogen $PWD.";
