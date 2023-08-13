#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Rample Output:
enter the number:4
1 2 3 4 
1 2 3 4 
1 2 3 4 
1 2 3 4 
document
read -p "enter the number:" num
for i in `seq $num`
do
    for j in `seq $num`
    do
        echo -n "$j "
    done
    echo
done



