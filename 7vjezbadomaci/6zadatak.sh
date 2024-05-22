echo "Broj elemenata niza:"
read n
niz=()
for (( i=1; i<=$n; i++ ))
do 
    niz+=($i)
done
echo ${niz[*]}

for (( i=0; i<$n; i++ ))
do 
    ostatak=$(( ${niz[i]} % 2 ))
    if [ $ostatak -eq 0 ]
    then
        echo "${niz[i]} je paran broj"
    fi
done

