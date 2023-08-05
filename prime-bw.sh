#!/bin/bash
#!/bin/bash
<<document
Name:Prashanth K B
Date:22/07/2023
Description:to find primes b/w range
Sample Input:
Sample Output:
document
read -p "enter the numbers limit between start to end:" start end
for a in $(seq $start $end)
do
  k=0
  for i in $(seq 2 $(expr $a - 1 ))
  do
      if [ $(expr $a % $i) -eq 0 ]
      then 
          k=1
          break
      fi
  done
  if [ $k -eq 0 ]
  then 
      echo "$a"
  fi
  done


