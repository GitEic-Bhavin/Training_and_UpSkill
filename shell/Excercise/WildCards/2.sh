# Exercise 2:

# Write a script that renames files based on the file extension. 
# The script should prompt the user for a file extension. 
# Next, it should ask the user what prefix to prepend to the file name(s). 
# By default the prefix should be the current date in YYYY­MM­DD format. 
# So, if the user simply presses enter the date will be used. 
# Otherwise, whatever the user entered will be used as the prefix. 
# Next, it should display the original file name and the new name of the file. 
# Finally, it should rename the file.

# Example output 2:

# Please enter a file extension: jpg 
# Please enter a file prefix: (Press ENTER for 2015­08­10). 
# Renaming mycat.jpg to 2015­08­10­mycat.jpg.

TIME=$(date +"%Y%m%d")

read -p "Please enter a file extension to rename a file: " ext
read -p "What should prefix to a file OR Enter for $TIME" prefix

LIST=$(ls -l | grep -E '^-' | grep -v '.sh' | awk '{print $9}')

# echo "$TIME"
echo "$LIST"

# file=$(find . -name "$LIST" -exec mv {} {}."$ext" \;)
# echo "$file"

for i in $LIST
do
    if [ -z $prefix ]; then
        prefix=$TIME
        # echo "$i is renaming to {$TIME$i.$ext}"
        # echo "$i is renaming to $prefix.$ext"
        find . -iname "$i" -exec mv "${i} ${i}.$ext" \;
    # elif [ -n $prefix ]; then
    #     echo "$i is renaming to {$prefix$i.$ext}"
    fi
done
