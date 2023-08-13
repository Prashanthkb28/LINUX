#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
enter the number:4
4 4 4 4 
3 3 3 
2 2 
1 
document
read -p "enter the number:" num
for i in `seq $num -1 1`
do
    for j in `seq $i`
    do
        echo -n "$i "
    done
    echo
done



