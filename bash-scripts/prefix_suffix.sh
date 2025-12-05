#!/bin/bash
dir="."
echo "Enter prefix (leave empty if not using):"
read prefix
echo "Enter suffix (leave empty if not using):"
read suffix
for file in "$dir"/*; do
    if [ -d "$file" ]; then
        continue
    fi

    base=$(basename "$file")
    name="${base%.*}"
    ext="${base##*.}"

    if [ "$name" = "$ext" ]; then
        newname="${prefix}${name}${suffix}"
    else
        newname="${prefix}${name}${suffix}.${ext}"
    fi

    mv "$file" "$dir/$newname"
done

echo "Renaming complete!"
