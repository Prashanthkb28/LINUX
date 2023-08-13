#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:pattern printing
Sample Input and output:enter the number:4
 ****
  ***
   **
    *
document
read -p "enter the number:" num
for i in `seq $num`
do
    for j in `seq $i`
    do
        echo -n " "
    done
    for k in `seq $i $num`
    do
        echo -n "*"
    done
    echo
done
<<string
enter the number:4
 * * * * 
  * * * 
   * * 
    *  for this use (* )space
string
