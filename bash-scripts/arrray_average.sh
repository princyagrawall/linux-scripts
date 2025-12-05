arr=(10 20 30 40 50)
sum=0
length=${#arr[@]}
for n in "${arr[@]}"
do 
  sum=$(( sum + n ))
done
average=$(( sum/length ))
echo "sum of elements of array is $sum"
echo "average of elements of array is $average"
