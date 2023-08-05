#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to check some file test operator
Sample Input:
Sample Output:
document
if [ $# -ne 0 ]
then
echo "The available choice are :"
echo -e "1.check for file is a block of special file\n2. check whether file or directory\n3.check for file exits or not\n4.check is the file empty or not\n5. file as a access to executable permission"
read -p "enter the choice option:" choice
case $choice in
    1) if [ -s $1 ]
    then
        if [ -b $1 ]
        then
            echo "$1 is a block of special file"
        else
            echo "$1 is not a block of special file"
        fi
    else
        echo -e " the file content is empty \nError:please enter the file with content"
    fi  ;;
    2) if [ -f $1 ]
     then
         echo " $1 is a file"
     elif [ -d $1 ]
     then
         echo "$1 is a directory"
     else
         echo "$1 not a file/directory"
     fi ;;
     3)
     if [ -e $1 ]
     then
         echo "$1 file exits "
     else
         echo "$1file does not exits"
     fi ;;
     4) if [ -s $1 ]
     then
         echo "$1 file is not empty"
     else
         echo "$1 file is empty"
     fi ;;
 5) if [ -x $1 ]
 then 
     echo "$1 file has executable permission"
 else
     echo "$1 file doesn't have executable permission"
 fi ;;
 *) echo "invalid option" ;;
 esac
 else
    echo "error: please pass the file as a arguments"
fi

