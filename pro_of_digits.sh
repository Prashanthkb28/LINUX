#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:the product of digits of the given number
Sample Input:
Sample Output:
document

read -p "enter the number" num
product=1
if ! [[ $num =~ ^[0-9]+$ ]]
then
    echo "the input is not a number"
else
while [ $num -gt 0 ]
do
    digit=$((num%10))
    product=$((product*digit))
    num=$((num/10))
done
echo "the product of digits is :$product"
fi

