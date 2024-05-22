#!/bin/bash

echo -n "Pozdrav, unesi jedan broj: "
read n

sum=0

for (( i=1; i<=n; i++ ))
do
    ostatak=$(( $i % 2 ))
    if [ $ostatak -eq 0 ]
    then
        echo "Paran broj ${i}"
        sum=$(( sum + $i ))
    fi
done

echo "Suma parnih brojeva je: ${sum}" 

