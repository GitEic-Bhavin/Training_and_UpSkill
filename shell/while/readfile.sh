LINE_NUM=1

while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < ../sh1.sh

# LINE → variable that stores each line.
# < ../sh1.sh - redirects the file as input to the loop.

