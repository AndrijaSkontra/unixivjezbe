#!/bin/bash

function citanje_prava() {
    local prava="$1"
    local vlasnik="${prava:0:3}"
    local grupa="${prava:3:3}"
    local ostali="${prava:6:3}"

    echo "${vlasnik} ${grupa} ${ostali}"
}

function ispis() {
    local prava=($1)
    echo "Prava pristupa datoteci: ${prava}"
    echo "Vlasnik: ${prava[0]}"
    echo "Grupa: ${prava[1]}"
    echo "Ostali: ${prava[2]}"
}

touch datotekanovo.txt

ls -l | grep datotekanovo.txt > novo.txt

word=$(cat novo.txt)

word=${word:1}

word=${word:0:9}

echo "${word}"

rm datotekanovo.txt
rm novo.txt

prava=$(citanje_prava "${word}")

echo "${prava} nakraju"

ispis "${prava}"
