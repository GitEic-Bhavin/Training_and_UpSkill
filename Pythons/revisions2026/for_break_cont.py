# We want to loop from 1 to 20.

# If the number is a multiple of 5, we want to skip it (using continue).

# If we hit the number 13, we want to stop the loop entirely (using break).

for i in range(1,21):
    if i % 5 == 0:
        continue
    print(i)
    if i == 13:
        break