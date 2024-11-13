#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "$0 ce programme demande un argument."
    exit 1
fi

FICHIER_URLS=$1
line_nb=1

while read -r line
do
    code=$(curl -s -I -L -w "%{http_code}" -o /dev/null $line)
    encoding=$(curl -o /dev/null -s -I -L -w "%{content_type}" $line | grep -Po "charset=\S+" | cut -d "=" -f2 | tr -d "\r\n")

    #encoding=$[ encoding":-N/A" ]

    nb_mots=$(lynx -dump -nolist $line | wc -w)
    
    echo -e "$line_nb\t$line\t$code\t$encoding\t$nb_mots"
    line_nb=$((line_nb+1))
    
done < $FICHIER_URLS

$FICHIER_URLS > ../tableaux/tableau-fr.tsv

