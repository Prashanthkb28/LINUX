#!bin/bash
<< doc 
Name:Prashanth K B
date:21/07/2023
description:to check given integer first number is multiple of 2nd number
doc
read -p "enter two numbers :" num1 num2

if [[ $num1 =~ ^[0-9]+$ ]] && [[ $num2 =~ ^[0-9]+$ ]]
then 
    if [ $((num1 % num2 )) -eq 0 ]
    then 
       echo "The first number is multiple of second number"
   else
      echo "the first number is not multiple of second number"
  fi 
else
    echo "enter a valid integer numbers"
fi

