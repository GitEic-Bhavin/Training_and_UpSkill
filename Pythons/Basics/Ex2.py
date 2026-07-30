# Take a decimal number as input like 45.78 and output is:
# integer part - 45
# fractional part - .78

number = input("Enter decimal number like 45.78 ")

intp = int(float(number))
print(intp)

fracp = (float(number) - intp)
fracp = str(round(fracp,2))
fracp = fracp.replace("0","") # Replicae is function to work with string
                               # Syntax is - var.replace("replace to","replace with")
print(fracp)