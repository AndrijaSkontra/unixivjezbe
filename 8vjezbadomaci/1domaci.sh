#!/bin/bash

function napravi_datoteku() {
    dt=$1
    if [[ ! -e "${dt}" ]]
    then
        echo "stvaram ${dt} datoteku..." 
        touch $dt
        promjeni_prava $dt
        return 1
    else
        echo "datoteka vec postoji..."
        return 2
    fi 
}

function promjeni_prava() {
    dt=$1
    echo "Prava datoteke: `ls -l | grep ${dt}`"
    echo "Zelis li promjenu prava DA/NE"
    read unos
    if test "${unos}" = "DA"
    then
        echo -n "Unesi binarno koja prava zelis: "
        read prava
        chmod $prava $dt
        echo "Prava datoteke: `ls -l | grep ${dt}`"
    else
        echo "Izlaz..."
    fi
} 

echo -n "Unesi ime datoteke: "
read ime 
napravi_datoteku $ime

exit 0

