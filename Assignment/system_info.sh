#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description: write a script to print a system information
Sample Input:
Sample Output:
document
n="y"
while [ $n = "y" ]
do
    echo "1.Currently logged users
    2. your shell directory
    3. Home directory
    4. OS name & version
    5. Current working directory
    6. Number of users logged in
    7. Show all available shells in your system
    8. Hard disk information
    9. CPU information
    10. Memory Information
    11. File system information
    12. Currently running process."
read -p "enter the choice:" choice
case $choice in
    1) echo -n "currently login users:"; who
        ;;
    2) echo -n "your shell directory:"; echo $SHELL
        ;;
    3) echo -n "your home directory:"; echo ~
        ;;
    4) echo -n "os name version is:"; uname -a
        ;;
    5) echo -n "current working directory:";pwd
        ;;
    6) echo -n "Number of users logged in:"; who -q
        ;;
    7) echo-n "show all available shells in my system:"; cat /etc/shells
        ;;                                            
    8) echo -n "hard disk information:"; lshw    #can also use sudo lshw -class disk
        ;;
    9) echo -n "cpu information:"; lscpu    
        ;;
    10) echo -n "memory information:" ;free -h     
        # can also use cat /proc/meminfo
        ;;
    11) echo -n "file system information:" ; df -h
        ;;
    12) echo -n " currently running process:";ps
        ;;
    *) echo "Error : Invalid option, please enter valid option"
        ;;
esac
read -p "Do you want to continue (y/n) ? " n
done

