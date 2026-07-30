# Design a program to continuously input a number from user &
# print if it is positive or negative until the user enters “Quit”.

while True:
    
    n = input("Enter number or Quit: ")
    # match n:
    #     case "Quit":
    #         break
    # print(int(n))
    if (n == "Quit"):
        break
    elif (int(n) < 0):
        print (n, "is Negative")
    else:
        print(n, "is Positive")