read -p "Enter the input:" inp
if [[ $inp =~ ^[+-]?[0-9]+$ ]];# check fors +- int with any number b/w 0-9
then
    echo " the input $inp is an integer"
elif [[ $inp =~ ^[+-]?[0-9]*\.?[0-9]+$ ]];
then
    echo " float"
elif [[ $inp =~ [0-9] ]];
then
    echo "the input contains numbers along with any string "
elif [[ $inp =~ ^[0-9a-zA-Z]+$ ]];# ^[[:alnum:]]+$
then
    echo "input contains only alphabets and numbers"
elif [[ $inp =~ ^[^a-zA-Z0-9]+$ ]]
  then
     echo "input contains only special char"
elif [[ $inp =~ ^[[:alpha:]]+$ ]]
then
    echo "inputs contains only alphabets"
else
    echo "invalid input !!"
fi

