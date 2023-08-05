#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description :to check the given number is palindrome or not
Sample Input:
Sample Output:
document
read -p "enter the number::" num
palin=$num
rev=0
if ! [[ $num =~ ^[0-9]+$ ]]
then
    echo "input is not a number"
else
    while [ $num -gt 0 ]
    do
        digit=$((num%10)) #extract last digit of number
        rev=$((rev*10+digit))
        num=$((num/10))
    done
    if [ $palin -eq $rev ]
    then
        echo "$palin is a palindrome number"
    else
        echo "$palin is not a palindrome number"
    fi
fi
