#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:some basics concepts of file test operataors
Sample Input:
Sample Output:
document
if [ $# -ne 0 ]
then
    if [ -f $1 ]
    then
        if [ -s $1 ]
        then
        echo "$1 is a file"
        echo "==================the content of file is=========================== :"
        cat $1
        echo "=============the no of lines ,word count,char count is============:"
        echo "the no lines="`cat $1 | wc -l`
        echo "the no of word count="` cat $1 | wc -w`
        echo "the no of char count=" `cat $1 | wc -c`
        echo "===================the reverse content of file is================ "
        tac $1
        echo "-------- to find the particular word i.e "hi"in the file and its count--------"
          if [ -s $1 ]
          then
              echo "the repeated word are:"
              grep -o "hi" $1
              c=`grep -o "hi" $1 | wc -l`
              echo "the no of words repeated $c times"
          else
              echo "match not found"
          fi
       else
           echo "file content is empty"
       fi
   else
       echo "Error: It is not a file"
   fi
 else
     echo "Error :Please pass file as aarguments"
 fi
