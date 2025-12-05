echo "******Checking ANAGRAMS:********"
read -p "Enter first string: " str1 
read -p "Enter second string: " str2

sorted1=$(echo "$str1" | grep -o . | sort | tr -d '\n')
sorted2=$(echo "$str2" | grep -o . | sort | tr -d '\n')

echo "$sorted1"
echo "$sorted2"

if [ "$sorted1" = "$sorted2" ];then
    echo "The strings are anagrams."
else
    echo "The strings are not anagrams."
fi



