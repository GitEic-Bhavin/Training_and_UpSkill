# Exercise 7:

# Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

if [ -f "$1" ]; then
    echo "$1 is a file."
    ls -l "$1"

elif [ -d "$1" ]; then
    echo "$1 is a dir."
    ls -l "$1"

fi

# Exercise 8:

# Modify the previous script to accept an unlimited number of files and directories as arguments. 
# Hint: You'll want to use a special variable.

for i in $@
do
  if [ -f $i ]; then
    echo "$i is a file"
  elif [ -d $i ]; then
    echo "$i is a dir"
  fi
done