#!bin/bash
<< doc 
Name:Prashanth K B
date:21/07/2023
description:to check given year is leap year
doc
read -p "Enter the year :" year
if [ $((year % 4)) -eq 0 -a $((year % 100)) -ne 0 -o $((year % 4)) -eq 0 ]
then  
    echo "the given year is leap year"
else
    echo "the given year is not a leap year"
fi
