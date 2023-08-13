#!bin/bash
<< doc 
Name:Prashanth K B
date:21/07/2023
description:to check given 3 sides of triangle is right triangle
doc
read -p "Enter the three numbers:" side1 side2 side3 
if [ $((side1*side1)) -eq $((side2*side2 + side3*side3)) -o $((side2*side2)) -eq $((side3*side3 + side1*side1)) -o $((side3*side3)) -eq $((side2*side2 + side1*side1)) ]
then 
    echo "the given three sides forms a right triangle"
else
    echo "the given sides are do not from right triangle"
fi
