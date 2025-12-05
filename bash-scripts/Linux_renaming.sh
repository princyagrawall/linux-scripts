read -p "Enter directry path: " dir
read -p "Enter prefix: " pre
for file in "$dir"/*
do 
   base=$( basename "$file" )
   mv "$file" "$dir"/"${pre}_${base}"
done
echo "All file renamed with refix $pre"
