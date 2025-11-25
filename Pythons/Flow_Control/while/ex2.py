# Write a program which gets a positive integer from a user using input() and assigns it to a variable.

# The program should then use a while loop to get the sum of all of the integers from the integer that was entered by the user down to 1.  
# For example, if the integer entered by the user was 6, the while loop would find the sum of 6, 5, 4, 3, 2, and 1, which is 21.

# At the bottom of your program create two print statements.  
# One will display the user entered integer and the other will display the sum found by the while loop.

# Sum of Numbers From a Positive Integer Solution
# pos_int is a variable which holds a user entered integer.
pos_int = int(input("Please enter a positive integer."))
# This variable stores the initial value of pos_int before it is used in the loop so
# that later it can be used to display pos_int's initial value in the output.
int_init = pos_int
# This is a variable which will be used to hold the sum of all the integers from pos_int.
summed = 0
# The while loop will run while pos_int's stored integer value is greater than 0
while pos_int > 0:
    # This is the equivalent of summed = summed + pos_int
    # In other words: new value of summed = old value of summed + new value of pos_int
    summed += pos_int
    # This will decrement pos_int so that pos_int will eventually equal 0 and the while
    # loop will stop running its code.
    pos_int -= 1
 
print(int_init)  # displays the initial value of pos_int
print(summed)    # displays the sum of integers from pos_int