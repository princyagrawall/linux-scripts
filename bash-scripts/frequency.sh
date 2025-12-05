read -p "Enter your number :: " n

for (( i=0; i<=10; i++  ))
do
	freq[$i]=0
done
for ((i = 0; i < ${#n}; i++))
do
    digit=${n:i:1}
    if [[ $digit =~ [0-9] ]]
    then
        ((freq[$digit]++))
    fi
done

echo "Digit Frequency:"
echo "----------------"
for ((i = 0; i < 10; i++)); do
    echo "Digit $i: ${freq[$i]}"
done
