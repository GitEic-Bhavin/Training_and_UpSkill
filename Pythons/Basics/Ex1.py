# Ask the user to enter two integer and one float.
# Convert them all to floats and print their average.

int1 = int(input("Enter 1st Integer :"))
int2 = int(input("Enter 2nd Integer :"))
float1 = float(input("Enter one float :"))

avg = float((int1 + int2 + float1)/3)

print (avg)

# The user enters a string containing a number( e.g.,).Convert it to : "45" •an integer •a float •a string again.
# Print all three values with their types.

value = str(input("Enter Integer in Strings like '45' : "))

valuei = int(value)
valuef = float(value)
value = str(value)


print ("valuei type is ", type(valuei))
print ("valuef type is ", type(valuef))
print ("value type is ", type(value))

# Write a program to SWAP values of two numbers entered by user.

num1 = int(input("Enter number 1 :"))
num2 = int(input("Enter number 2 :"))

num1, num2 = num2, num1
print("num1 = ", num1)
print("num2 = ", num2)

# Ask the user for a temp in Celsius string input.
# Convert it to 'float', then calculate and print temp in Fahrenheit.

# Formula: FahrenheitTemp = (CelsiusTemp * (9/5) + 32)

CelsiusTemp = str(input("Enter Temp value in Celsius :"))

CelsiusTempFloat = float(CelsiusTemp)

FahrenheitTemp = (CelsiusTempFloat * (9/5) + 32)

print("Entered Temp value in Fahrenheit is ", FahrenheitTemp)

# Take te radius (r) as user input and print the area.
# Formula: Area = Pi * r^2

r = int(input("Enter radius value in r :"))
area = (3.14 * (2**r))

print(area)


# Ask the user for: Principal (P), Rate (R), Time (T).
# Convert all to `float` and compute simple interest: SI = (P * R * T)/100

P = int(input("Enter Principal value :"))
R = int(input("Enter Rate value :"))
T = int(input("Enter Time value :"))

P = float(P)
R = float(R)
T = float(T)

SI = float(P * R * T)/100
print("SI is ", SI)


# Take a decimal number as input like 45.78 and output is:
# integer part - 45
# fractional part - .78

number = float(input("Enter decimal number like 45.78 "))

numberi = int(number)
print(numberi)

numberf = round(number - numberi, 2)

print(numberf)