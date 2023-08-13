#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
enter the number:4
1 
2 3 
4 5 6 
7 8 9 10 
document

read -p "enter the number:" num
count=1
for i in `seq $num`
do
    for j in `seq $i`
    do
        echo -n "$count "
        count=$(($count+1))
    done
    echo
done


