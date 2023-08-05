#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:the students marks are read from user and display the student result based on the total marks
Sample Input:
Sample Output:
document
read -p "Enter English subject marks: " eng; read -p "Enter Maths subject marks: " mat;  read -p "Enter Science subject marks: " sci;
sum=$((eng+mat+sci))
if [ $sum -lt 50 ]
then
	echo "Student has failed"
elif [ $sum -ge 50 -a $sum -le 100 ]
then
	echo "Student is average"
else
	echo "Student is excellent"
fi
