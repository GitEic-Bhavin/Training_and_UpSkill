# Nested means, 2nd conditions or more contions within 1st conditions.

username = input("Enter username: ")
passwd = input("Enter password: ")

if (username == "admin" and passwd == "pass"):
    print("Login Success!")
else:
    if (username != "admin"):
        print("Wrong username")
    else:
        print("Wrong passwd")