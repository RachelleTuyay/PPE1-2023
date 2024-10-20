#!/bin/bash
annee=$1
mois=$2
nb_lieux=$3


cat $annee/$mois/*.ann | cut -f 3 | uniq -c | sort -n | tail -n $nb_lieux

