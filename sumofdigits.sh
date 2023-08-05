#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to calculate the sum of digits
Sample Input:
Sample Output:
document
sum=0
read -p "enter the digit:" num
for i in `seq ${#num}`
do
    let sum=$sum+${num: $(($i-1)): 1}
done
echo "the sum of digits are:$sum"

