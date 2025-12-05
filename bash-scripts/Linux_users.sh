echo "Users currently logged in: "
who | awk '{print $1}' | sort | uniq
