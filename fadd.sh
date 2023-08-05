#!bin/bash
echo "enter the two numbers"
read a
read b
c= `echo "$a + $b" | bc`
echo "the sum is:$c"
