#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to check whether given number is prime or not
Sample Input:
Sample Output:
document
read -p "enter the number:" num
flag=1
for ((i=2; i<$num; i++))
do
    if [ $((num%i)) -eq 0 ]
    then
        flag=0
        break
    fi 
done
if [ $flag -eq 1 ]
then 
    echo "the $num is prime number"
else
    echo "the $num is not a prime number"
fi
