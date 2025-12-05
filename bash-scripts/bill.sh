echo "------ELECTRICITY BILL-------"
echo "Write unit of cunsumption used:"
read unit

if [ $unit -le 100 ]; then
   bill=$((unit*5));
   echo "Bill: $((50+bill))"
elif [ $unit -gt 100 ] && [ $unit -le 200 ]; then
   bill=$(( (unit-100) *7));
   echo "bill: $((500+50+bill))"
else
   bill=$(( (unit-200) *10));
   echo "bill: $((1200+50+bill))"
fi



