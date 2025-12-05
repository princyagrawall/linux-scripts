echo "enter a number between 1 to 7"
read number
case $number in
1)echo "monday" ;;
2)echo "tuesday" ;;
3)echo "wednesday" ;;
4)echo "thrusday" ;;
5)echo "friday" ;;
6)echo "saturday" ;;
7)echo "sunday" ;;
*) echo "invalid input"
esac
echo "DONE"
