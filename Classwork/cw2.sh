
#!bin/bash
<< doc 
Name:Prashanth K B
date:20/07/2023
description:to check given number is multiple of 5
doc
read -p "Enter the  number:" num1
if [ $((num1 % 5)) -eq 0 ]
then 
    echo "the numberis multiple of 5"
else
    echo "the number is not multiple of 5"
fi
