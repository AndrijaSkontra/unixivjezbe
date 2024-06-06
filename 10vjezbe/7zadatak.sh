#!/bin/bash

# make a calculator for 2 numbers and use functions

function add {
    echo "Sum is: $(($1 + $2))"
}

function sub {
    echo "Difference is: $(($1 - $2))"
}

function mul {
    echo "Product is: $(($1 * $2))"
}

function div {
    echo "Quotient is: $(($1 / $2))"
}

echo "Enter 2 numbers: "
read num1
read num2

echo "Enter operation (+[1], -[2], *[3], /[4]): "
read operation

case $operation in
    1) add $num1 $num2;;
    2) sub $num1 $num2;;
    3) mul $num1 $num2;;
    4) div $num1 $num2;;
    *) echo "Invalid operation";;
esac
