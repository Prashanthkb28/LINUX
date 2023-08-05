#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the factorial of a number
Sample Input:
Sample Output:
document
read -p "enter the integer value" num
fact=1
for (( i=1; i<=num; i++))
do
    fact=$((fact*i))
done
    echo " the factorial of a $num is i.e...$num!=$fact"

