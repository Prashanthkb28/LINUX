#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to get the greatest fibonacci number <=n 
Sample Input:
Sample Output:
document
read -p " enter the number to get greatest of fibonnaci numbers n<=n:" n
f1=0
f2=1
echo "the fibonacci series are:"
while [ $f1 -le $n ]
do 
    echo -n "$f1, "
    f3=$f1
    f1=$((f1+f2))
    f2=$f3
done
echo "the greatest fibonnaci numbers <=$n is:$f2"
