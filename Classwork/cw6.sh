#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find the smallest and largest of entered n numbers
Sample Input:
Sample Output:
document
read -p "enter the size of numbers:" n
largest=0
smallest=1
for i in `seq $n`
do
    read -p "enter the numer$i:" num
    if [ $num -gt $largest ]
    then
        largest=$num
    fi
    if [ $num -lt $smallest ]
    then
        smallest=$num
    fi
done
echo "the largest number among the numbers is :$largest"
echo "the smallest number among the numbers is:$smallest"

