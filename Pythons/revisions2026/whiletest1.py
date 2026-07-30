# Print factorial of 4 like 4*3*2*1 = 24

# While loop works continuously untill conditions meet true.
# While conditions make FALSE it will stops

# we need a exponential while loop for f=4 - ans should 4*3*2*1 = 24

# So, substractions -1 we will requires for each iterators

# f=4
# i=f



n = 4
result = 1

while n > 0:
    result = (n*result)
    # We need to multiply the result by n here
    # Then we need to update n
    n = n - 1
    # print(result)
print(result)  # This will print 4,3,2,1
