numbers=(5 9 2 17 3)
max=${numbers[0]}
for n in "${numbers[@]}"
do
  if [ $n -gt $max ]
  then 
     max=$n
  fi
done
echo "maximum=$max"

