#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
document
arr=($@)
echo ${arr[@]}
sum=`expr $1 + $2 + $3`
echo $sum
