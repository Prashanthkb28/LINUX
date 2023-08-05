#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description :output each directory name prior to listing the files within that directory
Sample Input:
Sample Output:
document
if [ $# -lt 1 ]
then
    echo "ERROR: invalid input !!! please enter the directory"
    echo "Usage : use atleast one arguments:"
    exit 1
fi
path=$1
if [ ! -d $path ]
then
    echo "Error:NO such directory exits"
    exit 1
fi

ls -R $1
