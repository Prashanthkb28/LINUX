#!bin/bash
<< doc 
Name:Prashanth K B
date:20/07/2023
description:to check product of 2 numbers are even or odd
doc
read -p "Enter the two numbers:" num1 num2
product=$((num1 *num2))
echo "the product of $num1 and $num2 is $product"
if [ $((product % 2)) -eq 0 ]
then 
    echo "the product of two number is even"
else
    echo "the product of two number is odd"
fi
