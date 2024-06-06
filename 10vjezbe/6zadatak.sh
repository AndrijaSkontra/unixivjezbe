#!/bin/bash

# function that checks the file extesion and if it is not .py or .txt it will print an error message

function provjera_ekstenzije() {
    if [[ $1 != *.py && $1 != *.txt ]]; then
        echo "Error: da bi stvorili datoteku more biti .py ili .txt ekstenzija!"
        exit 1
    else
        touch "${1}"
        echo "Datoteka je stvorena!"
    fi
}

echo "Unesi ime datoteke koju zelis stvoriti:"
read file_name

provjera_ekstenzije $file_name
