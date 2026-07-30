# In this task, we’ll write a program that adds up all the numbers from 1 to a specific limit (like 10). 
# It’s similar to your factorial code, but uses addition instead of multiplication.

limit = 10
i = 1
add=0
while (limit >= i):
    add=(add+i)
    i += 1
print(add)