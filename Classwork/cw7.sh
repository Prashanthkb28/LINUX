#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description: to print the all even numbers between 1 to 100
Sample Input:
Sample Output:
document
echo "the even numbers between 1 and 100 is :"
for (( i=1; i<=100; i++))
do 
    if [ $((i%2)) -eq 0 ]
    then
        echo -n "$i, "
    fi
done
    echo
