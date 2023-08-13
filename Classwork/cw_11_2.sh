#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description: pattern
Sample Input:enter the no of rows:4
Sample Output:enter the no of rows:4
* * * * * 
* * * * 
* * * 
* * 
* 

document
read -p "enter the no of rows:" row
for i in `seq 0 $row`
do
    for j in `seq 0 $(($row-i))`
    do
        echo -n  "* "
    done
    echo 
done
