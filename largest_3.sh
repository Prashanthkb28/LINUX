read -p"Enter the three numbers:" a b c
if [ $a -gt $b -a $a -gt $c ]
then
    echo "the $a is largest among three numbers"
elif [ $b -gt $c -a $b -gt $a ]
then
    echo "the $b is largest among three numbers"
else
    echo "the $c is largest among three numbers"
fi
#<<another_method
#max=$a
#if [ $b -gt $max ]
#then 
#max=$b
#fi
#if [ $c -gt $max ]
#then
3max=$c
#fi 
#echo "the largest number among 3numbers is :$max"
#another_method

