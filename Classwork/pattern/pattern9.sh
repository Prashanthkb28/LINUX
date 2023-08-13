#!/bin/bash
#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
enter the number:4
document
read -p "enter the number:" num
count=1
for i in `seq $num -1 1`
do
    for j in `seq $i`
    do
        echo -n "$count "
        count=$(($count+1))
    done
    echo
done


<<document
Name:Prashanth K B
Date:22/07/2023
Description:
Sample Input:
Sample Output:
document

