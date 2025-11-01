# Exercise 1:

# Write a shell script that prints "Shell Scripting is Fun!" to the screen.

# Hint 1: Remember to make the shell script executable with the chmod command.

# Hint 2: Remember to start your script with a shebang!

#! /bin/bash
echo "Shell scripting is Fun!"

# Exercise 2:
# Modify the shell script from exercise 1 to include a variable. 
# The variable will hold the contents of the message "Shell Scripting is Fun!"

VAR1="Shell Scripting is Fun!"
echo "$VAR1"



# Exercise 3:

# Store the output of the command "hostname" in a variable. 
# Display "This script is running on _______." where "_______" is the output of the "hostname" command.

# Hint: It's a best practice to use the ${VARIABLE} syntax if there is text or characters that directly precede or follow the variable.

HOST=`hostname`
echo "This script is running on ${HOST}." where "${HOST}" is the output of the "hostname" command.



# Exercise 4:

# Write a shell script to check to see if the file "/etc/shadow" exists. 
# If it does exist, display "Shadow passwords are enabled." 
# Next, check to see if you can write to the file. 
# If you can, display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have permissions to edit /etc/shadow."

file="/etc/shadow"

if [ -e $file ]; then
  echo "Shadow passwords are enabled"
    if [ -w $file ]; then
        echo "You have permissions to edit ${file}".
    else 
        echo "You do NOT have permissions to edit ${file}."
    fi
else 
  echo "${file} doesn't exists"
fi



# Exercise 5:

# Write a shell script that displays "man", "bear", "pig", "dog", "cat", and "sheep" to the screen with each appearing on a separate line. 
# Try to do this in as few lines as possible.

# Hint: Loops can be used to perform repetitive tasks.

ANIMAL="man bear pig dog cat sheep"

for i in $ANIMAL
do
  echo -n "${i}, "
done


# Exercise 6:

# Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. 
# Also perform an ls command against the file or directory with the long listing option.

read -p "Enter file or dir" input

if [ -f $input ]; then
    echo "${input} is a file."

    ls -l $input

elif [ -d $input ]; then
    echo "${input} is a dir."
    ls -l $input
else
    echo "Plz, Enter correct file or dir"
fi
