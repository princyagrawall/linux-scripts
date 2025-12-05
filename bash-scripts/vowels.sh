read -p "Enter a string: " str
vowels=0
consonants=0
for (( i=0;i<${#str};i++ )); 
do
  ch=${str:$i:1}
if [[ $ch =~ [AEIOUaeiou] ]]; then
   vowels=$((vowels+1))
elif [[ $ch =~ [A-Za-z] ]]; then
   consonants=$((consonants+1))
fi
done

echo "vowels = $vowels"
echo "consonants = $consonants"

