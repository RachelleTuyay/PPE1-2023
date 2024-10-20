#!/bin/bash

ANNEE=$1
ENTITE=$2

if [ "$#" -ne 2 ];
then
  echo "Ce programme ne contient pas 2 arguments."
  exit 1
fi

cat $ANNEE/*.ann | grep $ENTITE | wc -l

