# The loop keeps running and asking the user for a password as long as the input they type is incorrect. 
# It only breaks out of the loop once they get it right.

password="passwd@123"
passwd=""

while passwd != password:

    passwd = str(input("Enter your correct password: "))
    print("Enter your correct password")
    
print("Login Success!")