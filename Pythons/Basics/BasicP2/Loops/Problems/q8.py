# Let’s create a Simple that performs arithmetic operations. Create
# a function that performs addition, subtraction,
# multiplication, or division based on the parameter.
# Q8 Calculator
# calculator(a, b, operation)
# operation
# [ operation parameter can have values ‘+’ , ‘-’ , '*’ & ‘/’ .

a = int(input("Enter a value: "))
b = int(input("Enter b value: "))
operation = input("Enter +, -, /, *: ")

def calc(a,b,operation):

    match operation:
        case "+":
            ans = a + b
            print(ans)
        case "-":
            ans = a - b
            print(ans)

        case "/":
            ans = a / b
            print(ans)

        case "*":
            ans = a * b
            print(ans)



    # if (operation == "+"):
    #     ans = a + b
    #     print( ans )
    # elif (operation == "-"):
    #     ans = a - b
    #     print( ans )
    # elif (operation == "/"):
    #     ans = a / b 
    #     print( ans )
    # elif (operation == "*"):
    #     ans = a * b
    #     print( ans )
    # else: 
    #     print("Plz eter correct operators")

calc(a,b,operation)