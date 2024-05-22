#!/bin/bash

niz=()
min=1000
max=0
broj=0

for (( i=1; i<=50; i++ ))
do
    rndnum=$(( ( RANDOM % 1000 )  + 1 )) # random number between 1 and 1000
    niz+=($rndnum)
    if [ $min -gt $rndnum ]
    then
        min=$rndnum
    fi

    if [ $max -lt $rndnum ]
    then
        max=$rndnum
    fi
    
    if [ $i -lt 26 ]
    then
        broj=$(( broj + $rndnum ))
    else
        broj=$(( broj - $rndnum ))
    fi

    # echo "broj: ${broj} -- i: ${i}"  
done

echo "Minimalni broj u listi je: ${min}"
echo "Maksimalni broj u listi je: ${max}"
echo "Trazeni broj: ${broj}"

