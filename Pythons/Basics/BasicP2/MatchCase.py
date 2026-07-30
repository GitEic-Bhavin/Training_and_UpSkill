# Match Case - Is alternative for if - elif - else
# Its option choose by user from given options like a, b, c, and d.
# Based on what choosed by use, it will execute that option's assigned tasks.

# For Instance, a) color is Red - Print `Stop`, b) color is Yellow - Print `Look` , c) color is Green - Print `Go`

color = input("Enter color: ")

match color:
    case "Green":
        print("Go")
    case "Yellow":
        print("Look")
    case "Red":
        print("Stop")
    case _:
        print("Wrong color")
        print("Plz select color from Green, Yellow and Red only")