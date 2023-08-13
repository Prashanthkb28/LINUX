#!/bin/bash
<<document
Name:Prashanth K B
Date:10/08/2023
Description: write a script to delete a empty lines from a file
Sample execution:
1. ./delete_empty_lines.sh file.txt
Empty lines are deleted
Hello
How
are
you?
2. ./delete_empty_lines.sh
Error: Please pass the file name through command line.
document
if [ $# -gt 0 ]                                          #check for whether command line argument i.e text file is passed or not
then
    echo "Empty lines are deleted"
   sed -i '/^[[:blank:]]*$/d' $1                          # search for lines that start and end with blank and removed [[:blank:]]-represents all blank lines
    cat $1                                                #view the file after deleting empty lines
else
    echo "Error: Please pass the file name through command line."
fi

