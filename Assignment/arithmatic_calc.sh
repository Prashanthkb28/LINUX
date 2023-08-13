#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
document

if [ $# -eq 0 ]
then
    echo "Error: Please pass the arguments through command line."
    echo "Usage:./arithmatic_calc.sh 2.3+6.7"
    exit 1
fi
if [ $# -lt 3 ]
then
    echo "Error : Please pass 3 arguments."
    echo "Usage:./arithmatic_calc.sh 2.3+6.7"
    exit 1
else
    op=$2
    case $op in
        +)
            result=`echo "$1+$3" | bc`
            echo "$1$2$3=$result" ;;
        -)
            result=`echo "$1-$3" | bc`
            echo "$1$2$3=$result" ;;
        x)
            result=`echo "$1*$3" | bc`
            echo "$1$2$3=$result" ;;
        /)
            result=`echo "scale=2; $1/$3" | bc`
            echo "$1$2$3=$result" ;;
        *) echo "inavlid option ";;

    esac
fi

   

