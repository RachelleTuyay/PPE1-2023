#!/bin/bash
k=2016
ENTITE=$1

if [ "$#" -ne 2 ];
then
  echo "Ce programme ne contient pas 2 arguments."
  exit 1
fi


while [ $k -le 2018 ]
do
    echo -e Occurences de $1 pour l\'année $k
    cat $k/*.ann | egrep -E $1 | wc -l
    ((k++)) #incrémentation
done

