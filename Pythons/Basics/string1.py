# # Create a variable and assign it the string "Just do it!"

# Access the "!" from the variable by index and print() it

# Print the slice "do" from the variable

# Get and print the slice "it!" from the variable

# Print the slice "Just" from the variable

# Get the string slice "do it!" from the variable and concatenate it with the string "Don't ".  
# Print the resulting string, which should be "Don't do it!" where the "do it!" part is a slice.

var1="Just do it!"
# Access the "!" from the variable by index and print() it
print(var1[10])
# Print the slice "do" from the variable
print(var1[5:7])
# Get and print the slice "it!" from the variable
print(var1[8:])
# OR by nagative indexing
print(var1[-3:])

# Print the slice "Just" from the variable
print(var1[0:4])

# Get the string slice "do it!" from the variable and concatenate it with the string "Don't ".  
print("Don't" , var1[5:])

# type() & str()

ex1=True
ex2=str(29)

print(type(ex1))

print(type(ex2))

# <class 'bool'>
# <class 'str'>

str1="5"
str2="10"
print(int(str1)+int(str2))