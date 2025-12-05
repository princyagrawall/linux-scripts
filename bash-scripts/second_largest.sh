arr=(10 20 30 40 50)
largest=${arr[0]}
second_largest=0
for i in "${arr[@]}"
do
  if [ $i -gt $largest ];then
  largest=$i 
  second_largest=$largest
fi
done
echo " second largest number is $second_largest"
