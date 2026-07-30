# Write a function is_prime(n) that returns True if n is a prime number and False otherwise, using a loop.

# [Hint -
# 1. We only check prime for 2 or numbers greater than 2. is the smallest
# prime number.
# 2
# 2. A number, , will always get divided by atleast one number in
# range [2, n-1].
# non-Prime n
# Eg - For number we’ll check in range (2, 8) & it’ll get divided by 3. So is
# non-prime & we’ll return false for it.
# 9 9
# For number we’ll check in range (2, 6) & it won’t get divided by any. So
# is prime & we’ll return true for it. ]

n = int(input("Enter number n: "))

def is_prime(n):
    count = 2
    while (count <= n-1):
        
        if (n % count == 0):
            print(n,"is not Prime")
            break
        else:
            count += 1
            
        if(count==n-1):
            print(n," is prime")
is_prime(n)
            