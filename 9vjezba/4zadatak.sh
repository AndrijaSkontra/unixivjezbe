#!/bin/bash

function insert_table() {
    brojlinija="`wc -l < $1`" # this maybe wont work
    echo "STUDENT${brojlinija} ${RANDOM}" >> $1
}

touch slucajni.txt
echo "How much lines you want to add to slucajni.txt: "
read n

for (( i=0; i<$n; i++ ))
do
    insert_table slucajni.txt
done

cat slucajni.txt

echo "Po kojem stupcu zelis sortiranje 1/2 ?"
read m

sort -nk $m slucajni.txt > sort.txt
cat sort.txt

