#!/bin/bash
annee=$1
mois=$2
nb_lieux=$3

if [ "$#" -ne 3 ];
then
  echo "Ce programme ne contient pas 3 arguments."
  exit 1
fi

cat $annee/$mois/*.ann | cut -f 3 | uniq -c | sort -n | tail -n $nb_lieux

