# Zadatak 3.
# Unesenu rečenicu ispisati u obrnutom poretku.
# a) Koristeći funkciju naziva obrnuto() (Bez korištenja niza)
# b) Tako da svaku rijec stringa, zapišete u novi niz naziva „novi_niz”, a
# potom svaki element niza zapišete obrnuto u niz naziva
# „niz_obrnuto”. Ispišite oba niza. (bez korištenja funkcije)

#!/bin/bash

obrnuto() {
    echo $1 | rev
}

echo "Unesite recenicu:"
read recenica

echo "Recenica unatrag: $(obrnuto "$recenica")"

