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


#version sans la boucle while et vérification des arguments : 
a=2016
echo "Annotations pour" $a ":"
cat $a/*.ann | wc -l

b=2017
echo "Annotations pour" $b ":"
cat $b/*.ann | wc -l

c=2018
echo "Annotations pour" $c ":"
cat $c/*.ann | wc -l
