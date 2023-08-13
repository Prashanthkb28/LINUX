#!/bin/bash
<<document
Name:Prashanth K B
Date:08/08/2023
Description:Write a script to replace 20% lines in a C file randomly and replace it with the pattern 
Sample execution: -
1. ./replace_DEL.sh main.c
Before replacing
#incude <stdio.h>
int main()
{
         printf(“Hello world\n”);
}
After replacing
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
2. ./replace_DEL.sh main1.c
Error : No such a file.
3. ./replace_DEL.sh main2.c
Error : main2.c is empty file. So can’t replace the string.
4. ./replace_DEL.sh
Error : Please pass the file name through command line.
document

if [ $# -gt 0 ]                                       #check for cla is passed with some arguments
then
    if [ -f $1 ]                                      #check for cla is a file
    then
        if [ -s $1 ]                                  #check for file is non empty
        then
            lines=`cat $1 | wc -l`                    #caculate the total number of lines in a file
            if [ $lines -ge 5 ]                       #checking the lines should be atleast 5 and greater than 5
            then
                var=$((lines/5))                      #calculating the 20% of lines out of total lines
                arr=`shuf -i 1-$lines -n$var`         #generating  random numbers from 1 to total available lines in a file 
                echo "Before Replacing"
                cat $1                                #before replacing print the file content
                for i in ${arr[@]}                    #run loop upto array elements 
                do
                    sed -i "${i} s/.*/<-----Delete----->/" $1   #replace d line with this pattern
                done
                echo "After Replacing"
                cat $1                                 #printing after replace
            fi
        else
            echo "Error:$1 is empty file. So can't replace the string."   #error message for empty file passed
        fi
    else
        echo "It's not a file"                         #error if file doesntexits and not a file
    fi
else
    echo "Error: Please pass the file name through CL."  #error message for not passing cla
fi


