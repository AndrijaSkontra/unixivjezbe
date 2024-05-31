#!/bin/bash

echo "Unesite rijec:"
read rijec

echo $rijec | grep -o . > temp

tac temp > temp2
rm temp

arr=()
while IFS= read -r line; do
  arr+=("$line")
done < temp2

rm temp2
echo ${arr[@]}


