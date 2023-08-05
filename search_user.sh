#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to search a user present in your system
Sample Input:
Sample Output:
document
if [ $# -ne 1 ]
then
    echo "Error: No user name is given"
    echo "Usage:./filename.sh <username>"
    exit 1
fi
username=$1
echo "the user is found"
grep "^$1" /etc/passwd

