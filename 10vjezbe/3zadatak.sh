#!/bin/bash

echo "Unesite rijec:"
read rijec

IFS=' ' read -r -a rijeci <<< "$rijec"

novi_niz=()

niz_obrnuto=()

# Iteriranje kroz svaku rijec i zapisivanje u novi niz
for rijec in "${rijeci[@]}"; do
    novi_niz+=("$rijec")
    # Obrtanje rijeci i zapisivanje u niz za obrnute rijeci
    obrnuta_rijec=""
    for (( i=${#rijec}-1; i>=0; i-- )); do
        obrnuta_rijec="${obrnuta_rijec}${rijec:$i:1}"
    done
    niz_obrnuto+=("$obrnuta_rijec")
done

echo "Novi niz:"
echo "${novi_niz[@]}"
echo "Niz obrnutih rijeci:"
echo "${niz_obrnuto[@]}"

