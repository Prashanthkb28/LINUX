#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:adding two numbers using different methods
Sample Input:
Sample Output:
document
read -p "Enter the two numbers:" num1 num2
sum=$(($num1+$num2)) #note the space for each method
echo "The sum of $num1 and $num2 is :$sum"

#echo "The sum of $num1 and $num2 is :$((num1+num2))"
# using expr method sum=`expr $num1 + $num2` #using expr method
