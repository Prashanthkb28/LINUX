#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description :to check the given number is within the range
Sample Input:
Sample Output:
document
read -p "Enter a number to check whether it is in range : " num
if [ $num -gt 30 -a $num -lt 40 ]
then
	echo "The given number is is in  range"
else
	echo "The given number is out of range"
fi
