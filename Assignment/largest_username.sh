#!/bin/bash
<<document
Name:Prashanth K B
Date:5/08/2023
Description:Display the longest and shortest username on the system
Sample execution: -
Test Case 1. 
./largest_username.sh 
The Longest Name is: speech-dispatcher
The Shortest Name is:lp
document


arr=(`cat /etc/passwd | cut -d ":" -f1`)                # the piping of etc/passwd file to cut command to get the names and store in an array
longest=${arr[0]}                                       #initialize the longest variable to store longest name
shortest=${arr[0]}                                      #initialize the shortest variablr to store the shortest name
for i in ${arr[@]}                                      #run for loop up-to array elements
do
    if [ ${#i} -gt ${#longest} ]                         #condition to check longest name in the array
    then
        longest=${i} 
    elif [ ${#i} -lt ${#shortest} ]                     #condition to check shortest name in the array
    then
        shortest=${i}
    fi
done
echo "The longest Name is :$longest"                    #print longest name
echo "The shortest Name is:$shortest"                   #print shortest name
