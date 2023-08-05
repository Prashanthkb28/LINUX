#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the sum of digits
Sample Input:
Sample Output:
document
read -p "enter the number" num
sum=0
if ! [[ $num =~ ^[0-9]+$ ]]
then
    echo "the input is not a number"
else
while [ $num -gt 0 ]
do
    digit=$((num%10))
    sum=$((sum+digit))
    num=$((num/10))
done
echo "the sum of digits is :$sum"
fi
