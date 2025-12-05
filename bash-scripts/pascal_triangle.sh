#!/bin/bashi

echo "Welcom to making pascals triangle making script"
read -p "Enter number of rows here: " n

factorial() {
     if [ $1 -le 1 ]
     then
	     echo 1
     else
	     prev=$(factorial $(( $1 - 1 )))
	     echo $(( $1 * prev ))
     fi
}


for (( i=0; i<=n; i++ )) 
do
	for (( j=0; j<=i; j++ ))
	do
		fact_i=$(factorial $i)
		fact_j=$(factorial $j)
		fact_ij=$(factorial $(( i -j )))
		val=$(( fact_i / (fact_j * fact_ij) ))
		echo -n "$val"
 
	done
	echo 
done

