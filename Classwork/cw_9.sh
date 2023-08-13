#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:check whether the number is a palindrome or not
Sample Input:
Sample Output:
document
read -p "enter the number:" num
org=$num
while [ $num -gt 0 ]
do
    rem=$((num%10))
    rev=$((rev*10+$rem))
    num=$((num/10))
done
if [ $org -eq $rev ]
then
    echo "$num is palindrome"
else
    echo "$num not a palindrome"
fi
