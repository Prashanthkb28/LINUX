#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:read n and generate the pattern (number increments from left to right) half pyramid
Sample Input:enter the number:3
Sample Output:1
              1 2
              1 2 3
document
read -p "Enter the number:" num #input represents the no of rows required
for row in `seq $num` #to keep track for rows
do
    for col in `seq $row` #to run and keep track of columns
    do
        echo -n "$col " #to print the column numbers with space and in same line
    done
    echo  #to get new line
done
