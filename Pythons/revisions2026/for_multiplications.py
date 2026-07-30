# Print multiplications table for use input.

# 2 * 1 = 2
# 2 * 2 = 4

dec = int(input("Enter integer to make multiplication table: "))

# i = 1

for j in range(1,11):
    if j <= 10:
        print(dec, "*", j , "=", dec*j)
        # i += 1
