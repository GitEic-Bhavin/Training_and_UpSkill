# # Print Odd value to 10. Ex. 3, 6, 9 by not using continue
# We can skip to print even number by I % 2 == 0 and continue in if conditions.

I = 10
i = 1

while i <= I+1:
    if i % 2 == 0:
        # skip even numbers
        i += 1
        continue
    else:
        print(i)
        i += 1