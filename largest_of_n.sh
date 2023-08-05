#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the largest of n numbers
Sample Input:
Sample Output:
document
echo "enter the total number of elements"
read n
largest=0
for(( i=1; i<=n; i++))
do
    read -p "enter the element $i:" num
    if [ $num -gt $largest ]
    then
        largest=$num
    fi
done
echo "the largest number is:$largest"


