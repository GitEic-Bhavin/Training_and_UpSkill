gpa = int(input("Enter students GPA here: "))
approve = input("Can student will approve ?: ")

if (gpa >= 5):
    if (approve == "Yes" or "yes" or "y"):
        print("Student is approved for addmissions here")
    else:
        print("Student has not approved by principal")
else:
    print("Student doesn't have enogh GPA")
