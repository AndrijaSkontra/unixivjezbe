#!/bin/bash

function povrsina_pravokutnika() {
    local sirina=$1
    local visina=$2
    local povrsina=$((sirina * visina))
    echo "Površina pravokutnika je: $povrsina"
}

function povrsina_kvadrata() {
    local stranica=$1
    local povrsina=$((stranica * stranica))
    echo "Površina kvadrata je: $povrsina"
}

function povrsina_kruga() {
    local radijus=$1
    local povrsina=$(echo "print(${radijus}*2*3.14)" | python3)
    echo "Površina kruga je: $povrsina"
}

echo "Odaberite oblik za izračun površine:"
echo "1. Pravokutnik"
echo "2. Kvadrat"
echo "3. Krug"
read -p "Unesite broj opcije: " opcija

case $opcija in
    1)
        read -p "Unesite širinu pravokutnika: " sirina
        read -p "Unesite visinu pravokutnika: " visina
        povrsina_pravokutnika $sirina $visina
        ;;
    2)
        read -p "Unesite duljinu stranice kvadrata: " stranica
        povrsina_kvadrata $stranica
        ;;
    3)
        read -p "Unesite radijus kruga: " radijus
        povrsina_kruga $radijus
        ;;
    *)
        echo "Nepoznata opcija!"
        ;;
esac

