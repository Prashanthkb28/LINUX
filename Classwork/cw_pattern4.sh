#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output: 1 1 1
               2 2 2
               3 3 3
document

read -p "enter the number :" num
for i in `seq $num`
do
    for j in `seq $num`
    do
        echo -n "$i "
    done
    echo
done


