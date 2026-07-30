# Counts only vowel like a, e, i, o, u.

word = "artificial intelligence"
count = 0

for i in word:
    if (i == "a" or i == "e" or i == "i" or i == "o" or i == "u"):
        count += 1

print(count)

# total={}

# for j in word:
#     if (i == "a" or i == "e" or i == "i" or i == "o" or i == "u"):
#         total[i] += 1
# for key in total:
#     print("Total ", key, "is", total)

word = "artificial intelligence"
vowel_count = {}
vowel = "aeiou"

for v in word:
    if v in vowel_count:
        vowel_count[v] += 1
    else:
        vowel_count[v] = 1
    
for char, count in vowel_count.items():
    print(f"Total {char} is {count}")

# for vowel,   in vowel_count:
#     print("Total ", v, "is counted :", vowel_count[key])

# # Print the breakdowns
# for vowel, count in vowel_counts.items():
#     print(f"Total {vowel} is {count}")