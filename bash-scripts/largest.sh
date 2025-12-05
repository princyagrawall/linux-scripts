find_largest () {
if [ "$x" -ge "$y" ] && [ "$x" -ge "$z" ]; then
    echo "$x is the largest"
  elif [ "$y" -ge "$x" ] && [ "$y" -ge "$z" ]; then
    echo "$y is the largest"
  else
    echo "$z is the largest"
  fi
}
read -p "Enter three number:" x y z
find_largest $x $y $z 
