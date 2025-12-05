echo "write down the grades (in percentage):"
read marks

if [ $marks -le 100 ] && [ $marks -gt 90 ];then
echo "Student recieves A+ grade"

elif [ $marks -le 90 ] && [ $marks -gt 80 ];then
echo "Student recieves B+ grade"

elif [ $marks -le 80 ] && [ $marks -gt 70 ];then
echo "Student recieves C+ grade"

elif [ $marks -le 70 ] && [ $marks -gt 60 ];then
echo "Student recieves D+ grade"

elif [ $marks -le 60 ] && [ $marks -gt 50 ];then
echo "Student recieves E+ grade"

else 
echo "Student recieves F+ grade"

fi

