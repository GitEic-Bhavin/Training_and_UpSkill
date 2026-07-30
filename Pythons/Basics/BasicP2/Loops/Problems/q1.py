# Q-1 Take `salary` as inputs.
# Using coditional statement, calculate the final tax rates based on the rules:
# 1. if salary < 30000 - 5 %
# 2. if salary is 30000 - 70000 - 15 %
# 3. if salary is > 70000 - 25 %


salary = int(input("Enter salary amount in int: "))

if salary < 30000:
    print("Tax is :", salary * 5 /100)
elif (salary == 30000):
    print("Tax is :",salary  * 15/100)
elif (salary > 70000):
    print("Tax is :",salary * 25/100)