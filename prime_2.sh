#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:prime numbers between a range
Sample Input:
Sample Output:
document
read -p "enter the lower limit :" low
read -p "enter the upper limit:" up
echo " the given range is  from $low to $up"
echo "the prime numbers are:"
while [ $low -le $up ]
do
    #if [ $low -le 1 ]
    #then
       # continue
    #else
    i=2
    flag=1
    while [ $i -lt $low ]
    do
        if [ `expr $low % $i` -eq 0 ]
        then
            flag=0
           # break
        fi
         i=`expr $i + 1`        
    done
    if [ $flag -eq 1 ]
    then
        if [ $low -ge 2 ]
        then
        echo "$low"
    fi
    fi
    low=`expr $low + 1`
#fi
done

