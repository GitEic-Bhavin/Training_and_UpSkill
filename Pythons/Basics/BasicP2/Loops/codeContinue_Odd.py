# Continue - To skip existing iteration and jump to next iterations.
# Continue - Ex. 1,2, 3 not print, 4,5,6 not print ,7, 8, 9 not print ,10.
# Print Odd value to 10. Ex. 3, 6, 9 by not using continue

i = 1

while (i <= 10):
    print (i)
    i += 2
    
# # Print Odd value to 10. Ex. 3, 6, 9 by not using continue
# We can skip to print even number by I % 2 == 0 and continue in if conditions.


I = 1

while (I <= 10):
    if (I % 2 == 0):
        # print(i)
        I += 1
        continue
    print(I)
    I +=1