# Print sum of first 'n' natural numbers
# n = 5. 1 + 2 + 3 + 4 + 5 = 15

n = int(input("Enter number for sum: "))

sums = 0

for i in range(1, n+1):
    # sums = sums + i
    sums += i

print(sums)