# Loops with lists - We will prefer For Loops

nums = [1,2,3,10,4]

for val in nums:
    print(val)
    
# Want to Search for specific value in lists.

x = 10
inx = 0

for val in nums:
    if (val == x):
        print(f"{x} found at index value {inx}")
        break
    inx += 1
        