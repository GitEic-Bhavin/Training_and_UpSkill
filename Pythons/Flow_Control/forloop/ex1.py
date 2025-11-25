# In a .py file, write a program which calculates the number of characters in a string.

# The string should be entered using input() and assigned to a variable. 

# Use print() twice at the end of your program.  
# The first print() will print the string that the user entered and the second print() will display the number of characters in the string. 
# For example, if the user entered the string "hello world", the number of characters would be 11.

string=str(input("Enter something string here: "))
counter=0

for word in string:
    counter += 1

print(string)
print("string length enterd is " + str(counter))