#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the largest and smallest number in an array
Sample Input:
Sample Output:
document
read -p "enter the length of array:" n
echo "enter the numbers"
for i in `seq $n`
do
    read arr[$((i-1))]
done
small=${arr[0]}
large=${arr[0]}
for i in `seq $((n-1))`
do
    if [ ${arr[$i]} -gt $large ]
    then
        large=$((${arr[$i]}))
    else
        small=$(( ${arr[$i]}))
    fi
done
echo "The largest number is $large and the smallest number is $small"

