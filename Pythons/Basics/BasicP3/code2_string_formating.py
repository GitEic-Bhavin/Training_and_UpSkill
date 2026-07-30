# String formating
# 1. Normal formatting
# You can diractly put var value into string in print().
# Use `{}` - is PlaceHolders.
# Use `.format(var1, var2, var3)`

a = 5
b = 10
sum = a + b

# 1. Normal Formatting
print("sum of {} and {} is {}".format(a,b,sum))
# sum of 5 and 10 is 15

print("language is {}".format("Pythons"))
# language is Pythons

# 2. Value based formatting

print("Values of vars {a} and {b} is {sum}".format(a=5, b=10, sum=a+b))

# 3. F-String
# You will not required to type "," to merge strings and vars.
# You can directly type strings and vars together by using {var_name}
# f" Type your strings here {var1} & {var2}"

print(f"sum of {a} and {b} is {sum}")