# In this scenario, we have a list of temperature readings. 
# We want to print each temperature, but if we encounter a temperature that is above 100, it’s an emergency! 
# We need to stop the loop immediately and print "System Shutdown".

temperatures = [60, 75, 82, 115, 90]
index = 0

for i in temperatures:
    print(i)
    if i > 100:
        print("System ShutDowns!")
        break