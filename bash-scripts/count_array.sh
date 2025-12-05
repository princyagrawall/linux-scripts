arr=(10 20 30 15 25 60)
even=0
odd=0
for n in "${arr[@]}"
do
  if [ $((n%2)) -eq 0 ]
  then 
      even=$((even+1))
  else 
     odd=$((odd+1))
  fi
done
echo "even count = $even"
echo "odd count = $odd"



