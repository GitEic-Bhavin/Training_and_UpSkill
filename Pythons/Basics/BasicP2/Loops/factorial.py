# factorial - n! ? - n = 4 -- 1*2*3*4 = 24

def calc_factorial(n):
    fact = 1
    for i in range(1, n+1):
        fact = fact * i    
    print(fact)
    return fact

n = int(input("Enter number for factorail: "))
calc_factorial(n)