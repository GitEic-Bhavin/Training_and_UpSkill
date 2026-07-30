# We have lists vars of list of integers.
# We want to sum of all available of lists 

ages = [56, 72, 24, 46]

sum=0

for i in ages:
    # print(i)
    tl = len(ages)
    sum = (sum + i)
    avg = (sum / tl)

print("Total length is ", tl, "and total sum is ", sum, " and avg is ", avg)

for x in [0, 2, 1, 3]:
    for y in [0, 4, 1, 2]:
            print('*')