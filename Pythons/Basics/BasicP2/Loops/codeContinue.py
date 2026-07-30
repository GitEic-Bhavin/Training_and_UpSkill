# Continue - To skip existing iteration and jump to next iterations.
# Continue - Ex. 1,2, 3 not print, 4,5,6 not print ,7, 8, 9 not print ,10.

i = 1

while (i <= 10):
    if ( i % 3 == 0):
        i += 1 
        continue
    # else:
    print(i)
    i += 1

print("We are outside of while loop")