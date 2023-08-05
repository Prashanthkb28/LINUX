#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the fibonacci series
Sample Input:
Sample Output:
document
read -p "enter the numberof fibonacci  series terms:" n
a=0
b=1
echo "fibonacci series:"
echo -n "$a "
for i in `seq 2 $n`
do
    echo -n "$b "
    temp=$b
    b=$((a+b))
    a=$temp
done
echo ""
