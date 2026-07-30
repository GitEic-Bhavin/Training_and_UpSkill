# We want to print all numbers from 1 to 10, but skip the even numbers.

# Goal: Use a while loop and the continue keyword.

# Hint: In Python, a number is even if number % 2 == 0.

i = 0

while i <= 10:
    i += 1
    if i % 2 == 0:
        continue
    print(i)