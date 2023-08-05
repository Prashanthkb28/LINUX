#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to perform arithmetic operations using case
Sample Input:
Sample Output:
document
echo -e "choose the arithmetic operator:1. + for addition\n2.- for subtracr=tion\n3. * for multiplication \n4. / for division\n5. % for modulo (remainder)"
read -p "enter the operator to perform basic operation:" option
read -p "Enter the two numbers:" num1 num2
case $option in
    +)res=$((num1+num2))
        echo "the addition of two number is :$res" ;;
    -)res=$((num1-num2))
        echo "the difference of two number is:$res" ;;
    \*)res=$((num1+num2))
        echo "the multiplication of two numbers is:$res" ;;
    /)res=$((num1/num2))
        echo "the result of division is :$res" ;;
    %)res=$((num1%num2))
        echo "the remainder is:$res" ;;
    *)echo "Invalid option " ;;
esac

