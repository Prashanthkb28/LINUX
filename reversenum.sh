#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:write a script to reverse a given number
Sample Input:
Sample Output:
document
if [ $# -lt 1 ]
then
    echo "inavlaid argument count"
    echo " enter at least 2 numbers"
    exit 1
fi
if ! [[ $1 =~ ^[0-9]+$ ]]
then
    echo -e "error: Not a number\nplease enter a valid integer number!!"
    exit 1
else
    echo " the reverse of a number is:"
    echo $1 | rev

fi
