# Take input of username and passwd from user
# Varify if username and passwd is correct or not ?
# If password and username are correct then print "Login Successful!".
# If username is wrong then print ("Wrong username")
# If password is wrong then print ("Wrong password")

username = input("Enter username :")
passwd = input("Enter password :")

if (username == "admin" and passwd == "pass"):
    print("Login Successful!")
elif (username != "admin"):
    print("Wrong Username")
elif (passwd != "pass" and username != "admin"):
    print("Wrong Password and username")
else:
    print("Wrong password")