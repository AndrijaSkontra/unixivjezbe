#!/bin/bash

function sortiraj() {
    sort datoteka.txt
    echo "sortiram uzlazno..."
} 

function r_sortiraj() {
    sort -r datoteka.txt
    echo "sortiram silazno..."
}

niz=()

touch datoteka.txt

for (( i=0; i<5; i++ ))
do
    echo "Unesi ${i} element:"
    read element
    niz+=($element)
    echo $element >> datoteka.txt
done

echo "how do you want to sort [n]ormal/[r]everse?"
read input

if [[ $input == "n" ]]
then
    sortiraj
else
    r_sortiraj
fi

# cat datoteka.txt
rm datoteka.txt
