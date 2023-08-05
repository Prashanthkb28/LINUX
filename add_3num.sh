#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:add 3 numbers of integer
Sample Input:
Sample Output:
document
read -p "Enter the three numbers:" a b c
sum=$((a+b+c))
echo "the sum of three numbers $a+$b+$c is:$sum"

