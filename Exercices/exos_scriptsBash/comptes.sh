#!/bin/bash
i=2016

if [ "$#" -ne 1 ];
then
  echo "Ce programme ne contient pas d'argument"
  exit 1
fi


while [ $i -le 2018 ]
do
    echo "Annotations pour" $i ":"
    cat $i/*.ann | wc -l
    ((i++)) #incrémentation
done
