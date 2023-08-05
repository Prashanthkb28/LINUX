#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description: basic concepts of array
Sample Input:
Sample Output:
document
read -p "enter the size of the array:" n
i=0
while [ $i -lt $n ]
do
    read -p "enter the element of $i array:" arr[$i]
    i=$((i+1)) 
done
echo "the elements of array :${arr[@]}"
echo "to print only first ele of array"
echo "${arr[0]}" # can use ${arr[0]} also
echo "======= to print the indices====="
echo "${!arr[@]}"
echo "to get last ele of array"
echo "${a[-1]}"
#to modify the array ele
echo "======== to append the the array vale at particular index ====="
arr[0]=123
echo "${arr[@]}"
echo "---to append into array at the end of the array...."
#to append the array element to the endof the array
arr+=( hello 1.5)
echo "${arr[@]}"
echo "--to remove the element from an array of particular index 0--"
unset arr[0]
echo "${arr[@]}"
echo "========after the reomval of element the indices are==============="
echo "${!arr[@]}"
echo "====to calculate the length of array====="
echo "${#arr[*]}"
echo "====to claculate the individual element length in an array===="
echo "${#arr[3]}"
echo "====to print array ele using for loop===="
for i in ${arr[@]}
do
    echo $i
done
echo ".....to print the array elemnts from a range......"
echo "${arr[@]:3}"
echo "${arr[@]:1:4}"



