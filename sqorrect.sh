#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description :to find whether it is square or rectangle
Sample Input:
Sample Output:
document
read -p " Enter the length and breadth of a geometry shape: " len brd
length=` echo "$len" | bc`
breadth=` echo "$brd" | bc`
if [[ $length -eq 0 || $breadth -eq 0 ]]
then
	echo "Please give correct input"
elif [ $length -eq $breadth ]
then
	echo "It is a square"
else
	echo "It is a rectangle"
fi
