#!/bin/bash

niz=()
touch niz.txt

for (( i=0; i<15; i++ ))
do
    broj=$RANDOM
    niz+=($broj)
    echo $broj >> niz.txt
done

sort -rn niz.txt >> uzlazno.txt
sort -n niz.txt >> silazno.txt

echo "uzlazno.txt:"
cat uzlazno.txt

echo "silazno.txt:"
cat silazno.txt




