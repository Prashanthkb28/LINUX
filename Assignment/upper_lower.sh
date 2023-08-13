#!/bin/bash
<<document
Name:Prashanth K B
Date:06/08/2023
Description:shell script to convert string lower to upper and upper to lower
Sample execution:
1. ./upper_lower.sh file.txt
1 – Lower to upper
2 – Upper to lower
Please select option : 1
WHAT IS OS?
WHAT ARE THE DIFFERENT OS?
2. ./upper_lower.sh file.txt
1 – Lower to Upper
2 – Upper to Lower
Please select option : 2
what is os?
what are the different os?
document
if [ $# -ne 0 ]                                          #check for cla is passed or not
then
    if [ -s $1 -a -f $1 ]                                #check for the file and file content is non empty
    then
        echo " 1) lower to upper"                         #print the options available
        echo " 2) upper to lower"
        read -p "enter the option :" op                   #read the choice option from the user
        case $op in                                       #use case statement to select and execute the mattched choice
            1) cat $1 | tr [:lower:] [:upper:]                    #converting to the lower case to upper case
                ;;
            2) cat $1 | tr [:upper:] [:lower:]                    #converting uppercase to lower case 
                ;;
            *) echo "inavlid option choice!!"             # error message for invalid choice
        esac
    else
        echo "Error : No contents inside the file."        #error message for empty file
    fi
else
    echo "Error : Please pass the file name through command line." # error message for missing cla
fi

