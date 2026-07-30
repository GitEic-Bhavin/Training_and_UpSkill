# vowel = a,e,i,o,u
# Count vowel in word = "artificial intelligence"

word = "artificial intelligence"

count = 0

for ch in word:
    if (ch == "a" or ch =="e" or ch == "i" or ch == "o" or ch == "u"):
        count += 1
print("ans =", count)
