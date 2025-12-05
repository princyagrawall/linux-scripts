echo "enter the numbers:" 
read x y
if [ $x -gt 0 ] && [ $y -gt 0 ]
then
    if [ $x -lt $y ]
    then
        echo "$x is less than $y"
    elif [ $y -lt $x ]
    then
       echo "$x is greater than $y"
    else 
        echo "$x is equal to $y"
    fi
else 
   echo "invalid inputs"
fi
