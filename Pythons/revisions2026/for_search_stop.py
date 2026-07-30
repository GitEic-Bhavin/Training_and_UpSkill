# Imagine you have a list of names: names = ["Alice", "Bob", "Charlie", "David"].
# We want to loop through the list and print each name 
# but stop the loop as soon as we find "Charlie".

fruits = ["apple", "banana", "cherry"]

for i in fruits:
    # print(i)
    if i == "cherry":
        break
    print(i)