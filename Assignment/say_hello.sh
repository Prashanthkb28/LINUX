#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:write a script called say_hello, which will print greetings based on time of the system
Sample Input:
Sample Output:
document
#hour=`date | cut -d" " -f4 | cut -d":" -f1`               #to get the hour from the date command and store in a variable
hour=`date | tr -s " " -f4 | cut -d"-" -f4 | cut -d ":" -f1`  #can also be used to get hour from the time
if [ $hour -ge 5 -a $hour -lt 12 ]         
                                                             #check the condition if hour is less than 12 of 24 hr format
then
    echo -n "good morning "
elif [ $hour -ge 12 -a $hour -le 13 ]                   #check the condition for hour >12 and <13 of 24 hr format
then
    echo -n "good noon "
elif [ $hour -ge 14 -a $hour -lt 17 ]                   #check the condition for hour >14 and <17 of 24 hr format
then
    echo -n "good afternoon "                            
elif [ $hour -ge 17 -a $hour -lt 21 ]                    #check for condition for hour >17 and <21 of 24 hr format
then
    echo -n "good evening "
else
    echo -n "good night "                                #if hour >21 of 24hr format print Good night 
fi
echo ""$USER" have a nice day!"                          #print a message along with user name
echo "This is $(date +%A) $(date +%d) in $(date +%B) of $(date +%G) $(date +%r)"                                                     # to print the day date month time
#note:to run this everytime when open the terminal add this file to .bashrc file
#open the .bashrc file and add bash <filepath> and save
