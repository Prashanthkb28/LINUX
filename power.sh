#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the power of given number
Sample Input:
Sample Output:
document
read -p "enter the base number:" base
read -p "enter the exponent value:" exp
res=1
for (( i=0; i<$exp; i++))
do
    res=$((res*base))
done
echo "$base raised to the power of $exp i.e....$base^$exp=$res"

