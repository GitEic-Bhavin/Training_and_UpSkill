# Print multiplications table for use input.

# 2 * 1 = 2
# 2 * 2 = 4

dec = int(input("Enter number to create multiplication table: "))

i = 1

while i <= 10:
    # print(f" {dec}, * ,{i}, =, " (dec*i))
    print(dec ,"*", i, "=", dec*i)
    i += 1
    # if ((dec ,"*", i, "=", dec*i) == 8):
    #     continue
    # i += 1
