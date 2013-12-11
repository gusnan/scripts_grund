#!/bin/bash

echo -n "Vad heter du? ";
read Name;

echo -n "Hur gammal är du? ";
read Age;

echo -n "Var kommer du ifrån? ";
read Ort;

echo "Hej $Name, du är $Age år gammal, och kommer från $Ort.";
