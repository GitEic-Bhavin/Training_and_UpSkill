word = "artificial intelligence"

char = 0

for i in word:
    if i == "i":
        char += 1
print("Max counted of i is ", char)

# Max counted of i is  5

# Count for each char for how many counted ?

chars = {}

for i in word:
    if i in chars:
        chars[i] += 1
    else:
        chars[i] = 1

for key in chars:
    print("Total ", key, "is counted for :", chars[key])

# Total  a is counted for : 2
# Total  r is counted for : 1
# Total  t is counted for : 2
# Total  i is counted for : 5
# Total  f is counted for : 1
# Total  c is counted for : 2
# Total  l is counted for : 3
# Total    is counted for : 1
# Total  n is counted for : 2
# Total  e is counted for : 3
# Total  g is counted for : 1