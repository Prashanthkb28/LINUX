#!/bin/bash
<<document
Name:Prashanth K B
Date:05/08/2023
Description:write a script to remove a file/directory replaced by lower/upper case letters
Sample execution: -
Before running the script
$ ls
File.txt MyScript.SH MyFile007.txt dir/ Assign1/ newfolder/
$ ./file_upper_lower.sh
Files are rename in lowercase and directories are renamed in upper case
$ ls
file.txt myfile007.txt myscript.sh DIR/ ASSIGN1/ NEWFOLDER/
document


echo "---before running the script---"
arr=(`ls`)                                                    #listing the current working directories files and dir and storing them in an array
echo ${arr[@]}                                                #printing the list of files/directories before executing the script
echo "-----after running the script----"
for i in ${arr[@]}                                            #run for loop upto array elements and access them one by one
do
    if [ -f $i ]                                              #checking for file 
    then
        newfile_name=`echo -n $i | tr 'A-Z' 'a-z'`            #translate old file name into  new name by lowercase letters and store in variable
        if [ $newfile_name != $i ]                            #checking for newname and oldname or not equal
        then
            mv $i $newfile_name                               #renaming the file
        fi
    fi
    if [ -d $i ]                                              #checking for directory
    then
        new_dir_name=`echo -n $i | tr 'a-z' 'A-Z'`            #trnalsting the old dir name to new dir name by uppercase letters and store in a variable
        if [ $new_dir_name != $i ]                            #check for new and old name
        then
            mv $i $new_dir_name                               #rename the dir
        fi
    fi
done                                                          #end of for loop
echo "All the  current working files are renamed to lower case and directories to upper case"
echo `ls`                                                     #print /list all files and directories after renaming

