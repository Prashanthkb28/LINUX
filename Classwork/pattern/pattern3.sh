#!/bin/bash
#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output :enter the number:4
4 
4 4 
4 4 4 
4 4 4 4 
document
read -p "enter the number:" num
for i in `seq $num`
do
    for j in `seq $i`
    do
        echo -n "$num "
    done
    echo
done



