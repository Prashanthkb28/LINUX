#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the fibonacci series
Sample Input:
Sample Output:
document
read -p "enter the numberof fibonacci  series terms:" n
first=0
second=1
echo "fibonacci series:"
echo -n "$first "
for i in `seq 2 $n`
do
    echo -n "$second "
    next=$second
    second=$((first+second))
    first=$next
done
echo ""
