#!/bin/bash
<<document
Name:Prashanth K B
Date:04/08/2023
Description:Given album name and corresponding directory ,this script renames the jpg files with new name passed through command line
Sample execution: -
Before executing the script
$ ls
DSN001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg
1) ./rename_album.sh day_out
All .jpg files in current directory is renamed as
day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg
2) ./rename_album.sh
Error : Please pass the prefix name through command line.
document


arr=(`ls *.jpg`)                                           #store all the jpg files in an array
if [ $# -ne 0 ]                                            #check for cla is passed
then
    echo "Before executing the script"                     #before executing the script print all the jpg files
    ls *.jpg
 for i in ${arr[@]}                                        # run for loop upto array elements
 do
     digit=$(echo $i | tr -cd [:digit:])                   #extract the digits from previous jpg files
     mv $i $1$digit.jpg                                    #rename the jpg files with the new name along with digits
 done
 echo -e "After executing the script\nAll .jpg files are renamed as follows:"     # after executing the script print all the renamed jpg files
 ls *.jpg
 else 
     echo "Error :Please pass the perfix name through command line."              #print error message if cla is not passed
 fi

