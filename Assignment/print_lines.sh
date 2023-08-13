#!/bin/bash
<<document
Name:Prashanth K B
Date:05/08/2023
Description:write a script to print the contents of file from given number to next number of lines
Sample execution: -
1. ./print_lines.sh 5 3 myfile.txt
line number 5
line number 6
line number 7

2. ./print_lines.sh myfile.txt
Error: arguments missing!
Usage: ./file_filter.sh start_line upto_line filename
For eg. ./file_filter.sh 5 5 <file>
document
if [ $# -ne 3 ]                                       #check for cla arguments
then
    echo "Error: arguments missing!"
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
else
    no_of_lines=`cat $3 | wc -l`                      #to count no of lines in a file
    count=$(($1+$2-1))                               # to count the max lines to be printed
  
    if [ $no_of_lines -ge $count ]                    #check for file conatining no of lines greater than user specified lines range
    then
         head -$count $3 | tail -$2                   # to get the lines printed
    else
        echo "Error: data.txt is having only $no_of_lines lines. file should have atleast $count  lines"
    fi
fi



