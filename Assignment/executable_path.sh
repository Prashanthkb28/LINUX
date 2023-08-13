#!/bin/bash
<<document
Name:Prashanth K B
Date:09/08/2023
Description:for aa each directory in the $PATH, display the number of executable files in that directory
Sample execution: -
1. ./executable_path.sh
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445
document

arr=(`echo $PATH | tr ":" " "`)                    #getting the executabe program paths and store it in an array
total_count=0                                      #initalize the total count
for i in ${arr[@]}                                 #run the loop for up to array elements and access them one by one
do    
    if [ -d $i ]                                   #check it for a directory
    then
       cd $i                                       #if its a dir then change to that directory
      count=0                                      #initialize the count 
      file_arr=(`ls`)                              #now all the dir are stored in array
      echo "current directory: `pwd`"              #printing the current working directory
     for j in ${file_arr[@]}                      #run loop up to array ele
     do
        if [ -x $j ]                                #check the file is executable or not
        then
           count=`expr $count + 1`                 #count each time when executable file is found
       fi
   done
   echo "current count: $count"
   total_count=`expr $total_count + $count`        #calculate the total avialable count
fi
done
echo "total-count:$total_count"                    #print the total count
