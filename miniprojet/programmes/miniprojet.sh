#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo " ce programme demande un argument."
    exit 1
fi

FICHIER_URLS=$1
line_nb=1

while read -r LINE ;
do
    http="footbar"
    http_code=$(curl -sILw "%{http_code}" -o /dev/null $line)
    encoding=$(curl -sILw "%{content_type}" -o /dev/null $line | grep -Po "charset=\S+")

    encoding=$[encoding:-"N/A"]

    nb_mots=$(lynx -dump -nolist $line | wc -w)
    
    echo  -e "$line_nb\t$LINE\t$encoding\t$nb_mots"
    line_nb=$(expr $line_nb + 1)
    
done < $FICHIER_URLS
