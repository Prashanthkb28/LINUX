#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
document
var=$1 # the 1st argument is stored with var variable
op=${var: -1} # to get the last char i.e operator from the input
len=${#var} # to get the length of the  cla arguments
if [ -z $1 ] # checking whether the arguments passed in command line or not
then
    echo "Error : Please pass the arguments through CL."
    echo "Usage : ./operator_dependent.sh 2345+"
else
    case $op in 
        +) sum=0 #initialising the variable
            for i in `seq 0 $(expr $len - 2)` # to get sequence from 0 to length of the arguments except operator
            do
                sum=`echo "$sum + ${var:i:1}" | bc` # to perform the sum of digits by loop
            done
            echo "Sum of digits = $sum"
           ;;
       -) diff=${var:0:1}
            for i in `seq 1 $(expr $len - 2)`
            do
                diff=`echo "$diff - ${var:i:1}" | bc`
            done
            echo "Subtraction of digits = $diff"
           ;;
       /) div=${var:0:1}
            for i in `seq 1 $(expr $len - 2)`
            do
                div=`echo "scale=2; $div / ${var:i:1}" | bc`
            done
            echo "Division of digits = $div"
           ;;
       x) mul=1
            for i in `seq 0 $(expr $len - 2)`
            do
                div=`echo "$mul * ${var:i:1}" | bc`
            done
            echo "Multiplication of digits = $mul"
            ;;
        *) 
            echo "Error: Operator missing or invalid operator,please pass operator as last digit (+,-,x,/)"
            ;;
    esac
fi

