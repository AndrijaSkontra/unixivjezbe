#!/bin/bash

function kvadriraj() {
    ulaz=$1
    kvadrirani=$(($ulaz*$ulaz))
    echo ${kvadrirani}
}

function tri() {
    ulaz=$1
    if (( $ulaz % 3 == 0 ))
    then
        echo "Ulazi u niz 3: ${ulaz}"
        return 1
    else
        return 0
    fi
}

function dva() {
    ulaz=$1
    if (( $ulaz % 2 == 0 ))
    then
        echo "Ulazi u niz 2: ${ulaz}"
        return 1
    else
        return 0
    fi
}

prvi_niz=()
niz_tri=()
niz_dva=()
niz_kvadrata=()

for (( i=0; i<10; i++ ))
do
    broj=$(( (RANDOM % 100) + 1 ))
    echo "BROJ: ${broj}"
    prvi_niz+=($broj)
    tri $broj
    result=$?

    if (( $result == 1 ))
    then
        niz_tri+=($broj)
    fi

    dva $broj
    if (( $? == 1 ))
    then
        niz_dva+=($broj)
    fi

    kvadrat=$(kvadriraj $broj)
    niz_kvadrata+=($kvadrat)
done

# IFS=', '

echo "Prvi: ${prvi_niz[@]}"

echo "Tri: ${niz_tri[@]}"

echo "Dva: ${niz_dva[@]}"

echo "Kvadrirani niz broj: ${niz_kvadrata[@]}"

