echo "Enter radius of circle:"
read r
circleArea(){
area=$(echo "3.14 * $r * $r" | bc)
    echo "Area of circle is $area"
}
circleArea
