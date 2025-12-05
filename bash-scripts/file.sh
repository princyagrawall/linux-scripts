str1="Hello"
str2='world'


echo $str1
echo $str2


greet=$str1" "$str2
echo $greet


echo ${#str1}


text="ShellScripting"
echo ${text:0:5}
echo ${text:5:9}
echo ${text:5:5} 
