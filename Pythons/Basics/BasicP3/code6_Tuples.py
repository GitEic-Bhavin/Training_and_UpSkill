# Tuples - Immutable sequence of values
# Tuples - Is same as Lists - But We can't change this lists is called tuples.
# Tuples - May have Duplicates value but we can't change it.
# Tuples defined by (), tup = (1,2,3,4,5)
# Set is same as Lists - But In Sets only have unique values Not Duplicates is called Sets.

tup = (1,2,3,4,2,5)

print(tup)
print(type(tup))

print(len(tup))

print(tup[2])

print(tup[0:3])

# Print elements of this tuple
# Print sum of tuple's all elements

sum = 0
# ind = 0
for val in tup:
    # print(val)
    sum = sum + val
    # ind += 1
print(f"Total sum of tuple is {sum}")
    
    
# Returns 1st occurnece of "2" in lists
tup.index(2)
print(tup.index(2))

# Returns total counts occurences
print(tup.count(2))