read -p "enter the number:" num
if [ $num -ge 5 -a $num -le 10  ]
then 
    echo "the number is b/w 5 and 10"
else
    echo "the number $num is not b/w 5"
fi
