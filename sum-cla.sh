#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
document
if [ $# -ge 1 ]
then
    sum=0    
    # to store in array arr=($@)
    for i in $@   # for loop when using array for i in {arr[$@]}
    do
    sum=`expr $sum + $i`
done
echo " the sum of the command line arguments are:$sum"
else
    echo "please enter at least 1 argument"
fi
