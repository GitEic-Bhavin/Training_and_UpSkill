# Write a functions that take 2 integer input as a,b and print all even numbers between them.

a = int(input("Enter int value in a: "))
b = int(input("Enter int value in b: "))

def even_numbers(a,b):
    for i in range(a,b):
        if (i % 2 == 0):
            print (i)
            
even_numbers(a,b)
