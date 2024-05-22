#!/bin/bash

function najduza() {
    najduza=''
    
    for (( i=1; i<=$1; i++ ))
    do
        echo "Unesi rijec: "
        read rijec
    
        if [ ${#rijec} -gt ${#najduza} ]
        then 
            najduza=$rijec
        fi
    done
    
    echo "${najduza} je najduza rijec, ima ${#najduza} slova."
}
    
echo -n "Unesi broj elemenata niza: "
read n

najduza $n


