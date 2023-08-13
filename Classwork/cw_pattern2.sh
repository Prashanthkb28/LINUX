#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:pattern
Sample Input:enter the no of rows:3
Sample Output: *
               * *
               * * *
document
read -p "Enter the no of rows :" row
for i in `seq $row`
do
    for j in `seq $i`
    do
        echo -n "* "
    done
    echo
done

