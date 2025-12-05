read -p "Enter the number of rows you want to print: " n
num=0

for (( i=1; i<=n; i++ ))
do
	for (( j=i; j<=n; j++ ))
	do
		echo -n " "
	done

	for (( j=1; j<=i; j++ ))
	do
		echo -n " $num "
		((num++))
	done
      
	echo

done


