#!/usr/bin/env bash
#Exo 2 et 3 :


#vérif 1
if [ $ # -ne 1 ]
then
    echo " ce programme demande un argument "
    exit 1
fi

FICHIER_URLS = $1
OK =0
NOK =0

while read -r LINE ;
do
    echo " la ligne : $LINE "
    if [[ $LINE =∼ ^ https ?:// ]]
    then
        echo " ressemble à une URL valide "
        OK = $ ( expr $OK + 1)
    else
        echo " ne ressemble pas à une URL valide "
        NOK = $ ( expr $NOK + 1)
    fi
done

nl -s $'\t' $FICHIER_URLS > ./tableaux/tableau-fr.tsv


