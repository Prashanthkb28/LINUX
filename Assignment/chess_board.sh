#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:write a script to print chess board
Sample Input:1. ./chess_board.sh
Sample Output: to print the 8x8 chess board
document
for row in `seq 8` #to run loop upto row i.e 8 rows
do
    for col in `seq 8` # to run loop upto col i.e 8 columns 
    do
        if [ $(expr $(expr $row + $col) % 2) -eq 0 ] #condition to add row and column for alternative printing white and black box
        then
            echo -e -n "\e[47m" " " # to print white box
        else
            echo -e -n "\e[40m" " " # to print black box
        fi
    done
    echo -e -n "\e[0m" " "   #whether 8 columns to make colour i.e to make normal

    echo
done

