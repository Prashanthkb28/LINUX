#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:swap two numbers with and without using third variables
Sample Input:
Sample Output:
document
echo -e "Enter the options to swap a values\n 1.with using temp variable\n2.without using temp variable"
read -p "enter the option 1 or 2" choice
if [ $choice == 1 ]
then
    read -p "enter the two numbers:" n1 n2
    echo "before swapping: a=$n1 b=$n2"
    temp=$n1
    n1=$n2
    n2=$temp
    echo ".....Using temp variable swapping"
    echo "After swapping: a=$n1 b =$n2"
elif [ $choice == 2 ]
then
    read -p "enter the two numbers:" n1 n2
    echo "before swapping: a=$n1 b=$n2"
    n1=$((n1+n2))
    n2=$((n1-n2))
    n1=$((n1-n2))
    echo ".....Using without temp variable swapping"
    echo "After swapping: a=$n1 b =$n2"
else
    echo -e "======invalid choice!!======\n please enter a valid choice either 1 or 2 \nnote:enter the numeric choice 1 or 2"
fi

