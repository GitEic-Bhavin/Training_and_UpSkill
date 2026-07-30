# Write a function to return the sum of digits of a number, n .

n = input("Enter n value: ")

def sum_numbers(n):
    sum = 0

    for i in n:
        sum = sum + int(i)
    print(sum)

sum_numbers(n)