#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
document
read -p "enter the number:" num
for row in `seq $num -1 1`
do
    for space in `seq $((num-row))`
    do
        echo 
    done
    for star in `seq $row`
    do
        echo -n "*"
    done
done
