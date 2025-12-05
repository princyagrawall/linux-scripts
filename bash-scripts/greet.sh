greet () {
        echo "Hello! Welcome to Linux Lab."
}
greet    #calling the function

greet_user () {
        echo "Hello, $1 $2"
}
greet_user "Princy" "Agrawal"

function greet_user2 {
        echo "Hello, $1 $2"
}
greet_user2 "Princy" "Agrawal"

square () {
        echo $(( $1 * $1))
}
result=$(square 6)
echo "Square = $result"

