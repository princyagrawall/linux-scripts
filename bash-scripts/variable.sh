demo() {
    local x=10
    echo "Inside function: x=$x"
}
demo
echo "outside function: x=$x" #x is undefined here
