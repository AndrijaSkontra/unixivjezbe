niz1=()
niz1+=("Ante")
niz1+=("Mate")
niz1+=("Katarina")

niz2=()
niz2+=(75)
niz2+=(60)
niz2+=(90)

niz3=()
niz3+=(4)
niz3+=(3)
niz3+=(5)

touch podaci.txt

for (( i=0; i<3; i++ ))
do
    echo "${niz1[$i]} ${niz2[$i]} ${niz3[$i]}" >> podaci.txt
done

cat podaci.txt

sort -nk 2 podaci.txt > bodovisort.txt

echo "sortirano po bodovima"
cat bodovisort.txt
