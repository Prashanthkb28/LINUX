#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:pascals triangle
Sample Input:
Sample Output:
document
read -p "enter the number:" num
for i in `seq $num`
    do
        for j in `seq $((num-1))
        do
            echo " "
        done
            value=1
        for k in `seq $i`
        do
            echo "$value "
            value= $((value* (($i-$k)/$k)))
        done
        echo
    done

