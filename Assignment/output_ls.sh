#!/bin/bash
<<document
Name:Prashanth K B
Date:4/08/2023
Description:WAS to print contents of a directory without ls command
Sample Execution:
1. ./output_ls.sh
Assignments Classwork
2. ./ouput_ls.sh ~ ~/ECEP
/home/user:
Downloads Documents Desktop Music Pictures Public Videos
ECEP
/home/user/ECEP:
Linux_Systems Advnc_C Linux_Internals Data_Structures MC
3. ./ouput_ls.sh Test
output_ls.sh: Cannot access ‘Test’ : No such a file or directory
document
if [ $# -eq 0 ]                                      #check for cla is not passed 
then
    echo *                                           #if cla is not passed then print current working directory contents
else
    for i in $@                                      #run for loop upto the cla arguments length 
    do
        if [ -d $i ]                                 # check for directory passed through cla
        then
            cd $i                                    # change the directory to passed cla directory
            echo "`pwd`:"                            #print the changed directory 
            echo *                                   #print the changed directory contents
        else
            echo "no such a file or directory"       #error message if passed cla file/directory not present
        fi
    done                                          
fi
