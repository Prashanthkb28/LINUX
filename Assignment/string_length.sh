#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description: write a script to print the length of each and every string
Sample Input:
Sample Output:
document
if [ $# -eq 0 ] #check for i/p from user through command line 
then
   echo "Error : Please pass the arguments through command-line."
   else
       arr=($@) # storing the cla in aray
       for i in ${arr[@]}  #run the loop for no of elements of array
       do
           echo "length of string ($i)-" ${#i} #print the each string length
       done
   fi


