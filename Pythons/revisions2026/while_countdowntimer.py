# countdown from 10 to 1 and then printing "Blast off!" at the very end. It's a great way to practice how the loop handles the final conditions.

ui = int(input("Enter your coutdown number from ?: "))

i = 0

while (ui >= i):
    print(ui)
    ui -= 1
    if ui == 4:
        continue
        print(ui)

# i = 0
# while i < 5:
#     i += 1
#     if i == 3:
#         continue
#     print(i)