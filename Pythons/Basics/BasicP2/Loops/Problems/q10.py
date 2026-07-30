# Let’s create a “Number Guessing Game”. 
# Given a secret number (alreadydecided by you),
# write a program that asks the user to guess it and prints:
# • "Too high" if the guess is above the number
# • "Too low" if the guess is below
# • "Correct!" if the guess matches

while True:
    sn = 10
    
    n = int(input("Enter number to play game: "))
        
    if ( n < sn ):
        print("Too low")
    elif ( n > sn ):
        print("Too hihg")
    elif ( n == n ):
        print("Correct!")
        break
        
    
            

