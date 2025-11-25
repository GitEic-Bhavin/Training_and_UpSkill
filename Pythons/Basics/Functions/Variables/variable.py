# Local  variable cant' be used by code in the global scope.
# Gloabal variable can be accessed by code in the local scope.
# Local scope of one functions can't use variable from  another function's local scope.
# You can use te same name for diff variables as long as they are in differenet scopes.

ex="Hello World!"  # Globel var scope

def loc_ex():
    example="This is local scope"  # Local scope
    return example

print(ex)
print(loc_ex())

# Globel Scope

globvar="This is a string "

def print_glob():
    localvar="that is very long"
    
    print(globvar + localvar)
print_glob()

# This is a string that is very long


# You can use te same name for diff variables as long as they are in differenet scopes.

def loc_ex1():
    fruit="pear"
    print(fruit)

def loc_ex2():
    fruit="banana"
    print(fruit)

fruit="apple"
loc_ex1()
loc_ex2()
print(fruit)

# pear
# banana
# apple



# Local scope of one functions can't use variable from  another function's local scope.

def first():
    loc=2
    return loc

def second():
    return loc

first()
second()

# return loc
# NameError: name 'loc' is not defined
# :~/Training_and_U