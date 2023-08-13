#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:pattern printing
Sample Input:
Sample Output:
document
read -p "enter the number of rows:" row
count=1
for i in `seq 0 $row`
do
    for j in `seq 0 $i`
    do
        echo -n "$count"
        count=0
    done
    count=$(($i%2))
    echo
done
