# Write a program to print all numbers from 1 to 100 that are divisible by both 3 and 5.

def numbers(a,b):

    for i in range(a,b):
        if (i % 3 == 0 and i % 5 == 0):
            print(i)

numbers(1,100)