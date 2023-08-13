#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:1
              1 2
              1 2 3
document
read -p "enter the number:" num
for i in `seq $num`
do
    for j in `seq $i`
    do
        echo -n "$j "
    done
    echo
done


