# Write a functions which will take 3 inputs like a,b,c.
# It will returns avg value of a,b,c

def avgp(a,b,c):
    ap = (a + b + c)/3
    print(ap)
    return ap

avgp(1,2,3)

# Set default value of parameters

def sum(a, b=1):
    return a + b

print(sum(5))
print(sum(5,4))