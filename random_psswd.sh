#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to generate the random password
Sample Input:
Sample Output:
document
echo "the password generated conatins alpha-numeric,special char:"
cat /dev/urandom | strings | head -n 1
echo "another method of password containing only alpha-numeric:"
cat /dev/urandom | tr -cd 'a-zAZ0-9' | fold -w 8 | head -n 1
 #to generate the random number we can use $RANDOM
