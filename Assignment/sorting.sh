#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:write a script to sort a given number in ascending or decending order
Sample execution: -
Test Case 1: 
./sorting.sh -a 5 4 6 2 3 8 9 7 1
Ascending order of array is 1 2 3 4 5 6 7 8 9
Test Case 2: 
./sorting.sh -d 5 4 6 2 3 8 9 7 1
Descending order of array is 9 8 6 5 4 3 2 1
document
arr=($@)                                                         #storing the CLA in array
if [ ${#@} -ne 0 ]                                               #checking for CLA is not equal to zero
then
   case ${arr[0]} in                                             #taking the 1st argument of cla as a choice and use in case
       -a) 
           for i in `seq 0 $(( ${#arr[@]} -2))`                  #bubble sort technique is applied for ascending order
           do
               for j in `seq 1 $(( ${#arr[@]} -$i -2))`
               do
                   if [ ${arr[j]} -gt ${arr[j+1]} ]
                   then
                       temp=${arr[j]}
                       arr[j]=${arr[j+1]}
                       arr[j+1]=$temp
                   fi
               done
           done
           echo "Ascending order of array is ${arr[@]:1}"        #printing ascending order elements of array ele
           ;;
       -d) 
           for i in `seq 0 $((${#arr[@]} -2))`                    #bubble sort technique for descending order
           do
               for j in `seq 1 $((${#arr[@]} -${i} -2))`
               do
                   if [ ${arr[j]} -lt ${arr[j+1]} ]
                   then
                       temp=${arr[j]}
                       arr[j]=${arr[j+1]}
                       arr[j+1]=$temp
                   fi
               done
           done
           echo "Descending order of array is ${arr[@]:1}"        #printing the descending order of array ele
           ;;
       *) echo "Error : please pass the choice."                   #printing error message if choice is not passed
          echo "Usage : ./sorting -a/ -d 4 23 5 6 3"
   esac
   else
       echo "Error : Plese pass the arguments through command line."  #error message for cla is missed
       echo "Usage : ./sorting -a/ -d 4 23 5 6 3"
   fi

