#function
sum=10
i=1
function name()
{
echo $1
}
name expr $sum + $((i+1))


#output will be expr 
