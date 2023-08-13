#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:write a script to determine whether a given file system or mount point is mounted
Sample execution: -
1. ./mounted_fs.sh /dev/sda2
File-system /dev/sda2 is mounted on / and it is having 98%
used space with 3298220 KB free.
2. ./mounted_fs.sh /dev
/dev is not mounted.
3. ./mounted_fs.sh
Error : Please pass the name of the file-system through command line
document

file_sys=(`df | tr -s " " | cut -d " " -f1`)                      #to get file-sys info
mount=(`df | tr -s " " | cut -d " " -f6`)                         #to get on which it is mounted on
space=(`df | tr -s " " | cut -d " " -f5`)                         #to get the %of space used 
free=(`df -h | tr -s " " | cut -d " " -f4`)                       #to get the available space
flag=0                                                            #initialize the flag variable
if [ $# -eq 0 ]                                                   #check CLA
then
    echo "Error: Please pass the name of the file system through CL."
else
    for i in `seq $((${#file_sys[@]} -1 ))`                      #to get the array ele acess one by one
    do
        if [[ ${file_sys[$i]} = $1 ]]                           #check for entered path file is same as file-sys
        then
              flag=1                                            #if condition true set flag=1
              if [ $flag -eq 1 ]                                #if flag value is true then print the requriments
              then
     echo "file system $1 is mounted on ${mount[i]} and it is having ${space[i]} used space with ${free[i]} free."
     break
        fi
    fi

    done
 if [ $flag -eq 0 ]                                             #if flag value is 0 then given path file system is not mounted
 then
     echo "$1 is not mounted"
 fi
 fi
        

