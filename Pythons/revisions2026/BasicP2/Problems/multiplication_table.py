# Print multiplication table of any number `n`.

n = 2
c = 1
m = 1

while (m <= 10):
    print(n, "*", m, "=", n*m)
    m += 1

# Print multiplication table for <= n
# n = 2, So multiplication table should print for 1 and 2.

N = 2
C = 1

while (C <= N):
    M = 1
    while (M <= 10):
        print(C, "*", M, "=", C*M)
        M += 1
    C += 1

# while C <= N:
#     M = 1
#     while (M<=10):
#         print(C,"*",M,"=",C*M)
#         M += 1
#     C += 1