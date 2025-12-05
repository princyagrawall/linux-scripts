arr=(10 20 30 40 50)
len=${#arr[@]}

for (( i=$len-1; i>=0; i-- ))
do
  echo "${arr[i]}"
done
echo

