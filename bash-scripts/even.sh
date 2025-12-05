check_even(){
    if (( $1 % 2 == 0 )); then
       return 0 #success
    else
       return 1 #failure
    fi
}
check_even 11
if [ $? -eq 0 ]; then 
   echo "Even number"
else 
   echo "odd number"
fi
