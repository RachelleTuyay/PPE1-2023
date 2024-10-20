#!/bin/bash
i=2016
while [ $i -le 2018 ]
do
    echo "Annotations pour" $i ":"
    cat $i/*.ann | wc -l
    ((i++)) #incrémentation
done
