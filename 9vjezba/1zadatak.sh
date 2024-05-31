#!/bin/bash

echo "Unesi ime datoteka:"
read ime
touch $ime

for (( i=0; i<5; i++ ))
do
    echo "Unesi rijec"
    read rijec
    echo $rijec >> $ime
done

echo "uneseno"
cat $ime
echo "sortirano"
# touch sortirano
sort $ime > sortirano
cat sortirano
