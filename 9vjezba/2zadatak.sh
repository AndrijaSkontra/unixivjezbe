#!/bin/bash

touch tablica.txt
echo -e "Student1 150 java\nStudent2 200 python\nStudent3 180 php" > tablica.txt 
# echo "Student2 200 python" >> tablica.txt 
# echo "Student3 180 php" >> tablica.txt 

cat tablica.txt

echo "po kojem stupcu zelis sortirati 1/2/3"
read broj

sort -k $broj tablica.txt > sortirana2.txt

echo "sortirana:"
cat sortirana2.txt



# case broj in
#
#   1)
#
#     ;;
#
#   2)
#     STATEMENTS
#     ;;
#
#   3)
# esac


 

