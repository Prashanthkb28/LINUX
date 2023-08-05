#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the sum of even numbers
Sample Input:
Sample Output:
document
read -p "enter the ranges of numbers:" start end
sum=0
for i in `seq $start $end`
do
    if [ $((i%2)) -eq 0 ]
    then
        echo -n "$i "
        sum=$((sum+i))
    fi
done
echo
echo " the of even numbers is $sum"
