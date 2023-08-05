#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to print the sum and average of numbers 
Sample Input:
Sample Output:
document
read -p "enter the numbers length :" n
echo "enter the numbers"
for i in `seq $n`
do
    read arr[$((i-1))]
done
sum=0
avg=0
for i in ${arr[@]}
do
    let sum=$sum+$i
done
avg=` echo "scale=2;$sum/${#arr[@]}" | bc`
echo "sum=$sum is sum and average=$avg is the average"

