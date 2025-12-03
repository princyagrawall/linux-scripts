echo "enter two numbers : "
read a b
echo "enter operation: "
read op
case $op in
+) result=$(( a+b )) ;;
-) result=$(( a-b )) ;;
*) echo "invalid input"
exit 1 ;;
esac
echo "result is $result"