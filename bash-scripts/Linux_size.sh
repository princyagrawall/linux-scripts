read -p "Enter directory path: " dir
read -p "Enter extension: " ext
read -p "Enter minumim size: (e.g +1M) " size
find "$dir" -type f -name "*.$ext" -size "$size"
