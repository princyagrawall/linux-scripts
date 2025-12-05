echo "--------Your advance calculator-------- "
read -p "Enter your num1" num1
read -p "Enter your num2" num2
read -p "Enter your operation(+, -, *, /, %)"
case
	+)result=$((num1 + num2));;
	-)result=$((num1 - num2));;
	\*)result=$((num1 * num2));;
	/)result=$((num1 / num2));;
	%)result=$((num1 % num2));;
	*)echo"Invalid opertor"; exit1;;
esac
echo "result: $result"

