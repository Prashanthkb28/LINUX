#!/bin/bash
<<document
Name:Prashanth K B
Date:07/08/2023
Description:write a script to count the number of user IDs between given range
Sample execution: -
1. ./user_ids.sh
Total count of user ID between 500 to 10000 is: 2

2. ./user_ids.sh 0 100
Total count of user ID between 0 to 100 is : 3

3. ./user_ids.sh 100
Error : Please pass 2 arguments through CL.
Usage : ./user_ids.sh 100 200

4. ./user_ids.sh 200 100
Error : Invalid range. Please enter the valid range through CL.
document


arr=(`cat /etc/passwd | cut -d ":" -f3`)                     #getting the userIDs from user config file and storing them in aray
if [ $# -eq 0 ]                                            #check for cla ,by default with no cla passed run default range
then
    count=0                                                #initialize the count to count no of user ids
    for i in ${arr[@]}                                     # run for loop upto array elements and acess them one by one
    do
        if [ $i -gt 500 -a $i -lt 10000 ]              #checking for a default range
        then
            count=`expr $count + 1`                        #count the no of user Ids each time to get total count
        fi
    done
    echo "Total count of User IDs between 500 to 10000 is:$count"       #print the total no of usr IDs
elif [ $# -eq 2 ]                                          # check for arguments passed throug cla
then
    if [ $1 -lt $2 ]                                       #check for a valid range that 1st argument is less than 2nd arguments passed through cls
    then
        count=0                                            #initialize the count
        for i in ${arr[@]}                                 #run for loop upto array elements and acess them one by one
        do
            if [ $i -gt $1 -a $i -lt $2 ]          #check for a range
            then
               count=`expr $count + 1`                     #count the user Ids each time and get total user Ids count
           fi
      done
          echo "Total count of user IDs between $1 to $2 is :$count"    #to print the total count
  else
     echo "Error : Invalid range,Please enter the valid range through CL."        #print error meassage if 1st argument is more than 2nd argument passed through CLA
 fi
else
   echo -e "Error : Please pass 2 arguments through CL\n Usage : ./user_ids.sh 100 200"                #error message to pass CLA
  fi 
