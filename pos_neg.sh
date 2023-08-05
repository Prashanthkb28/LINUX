#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:checking the given number is positive or negative
Sample Input:
Sample Output:
document
read -p "enter the number:" num
if [ $num -gt 0 ]
then
  echo "the $num is positive number"
elif [ $num -lt 0 ]
then
  echo "the $num is negative number"
elif [ $num -eq 0 ] 
then
    echo "the $num is equal to 0"
else
    echo -e "invalid input\nthe $num is not a number"
fi 


