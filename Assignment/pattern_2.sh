#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to read n number and generate a pattern (number increasing from top to bottom)
Sample Input:enter the number:4
Sample Output: 1
               2 3
               4 5 6
               7 8 9 10
document
read -p "Enter the number:" num #the no of rows needed is read from the user input
count=1 #initilizing the count  
for row in `seq $num` # to run loop for no of rows
do
    for col in `seq $row` # to run the loop for no of columns
    do
        echo -n "$count " #to print the value
        count=$((count + 1)) #incrementing the value of count for next number to print in next ittiration
    done
    echo " " #to get new line
done
