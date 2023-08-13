#!bin/bash
<< doc 
Name:Prashanth K B
date:21/07/2023
description:to check given integer first number is multiple of 2nd number
doc
read -p "Enter the two integer  numbers:" first_num sec_num
if [ $((first_num % sec_num)) -eq 0 ]
then 
    echo "the first number is multiple of second"
else
    echo "the first number is not multiple of second"
fi
