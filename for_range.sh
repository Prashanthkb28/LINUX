#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description: to print a range of number using for loop
Sample Input:
Sample Output:
document
read -p "enter the ranges to print the numbers :" start end
for i in `seq $start $end`
do
    echo -n $i
done

