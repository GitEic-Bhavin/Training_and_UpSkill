# Break and Continue

# Break - To exit from loop if condition match
# Break - Ex. You want to print 1 to 10 but, stop loop if found multiple of 6.
# Break - It will print till 1 to 6. 

# Continue - To skip existing iteration and jump to next iterations.
# Continue - Ex. 1,2, 3 not print, 4,5,6, 7 not print , 8, 9,10.

i = 1

while (i <= 10):
    if i % 3 == 0:
        print(i, "is multiplication of 3")
        i += 1
        continue
    print(i)
    i += 1


n = 1

while (n <= 10):
    if n % 3 == 0:
        print(n, "is multiplication of 3")
        # n += 1
        # continue
    else:
        print(n)
    n += 1

# i = 1

# while (i <= 10):
#     if ( i % 6 == 0):
#         break
#     print (i)
#     i += 1

# print("We are exited from loop bcz found the multiple of 6")