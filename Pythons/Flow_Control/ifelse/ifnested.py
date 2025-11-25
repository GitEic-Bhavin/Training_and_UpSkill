gpa = float(input("What is gpa of student ?: "))
insta_app = input("Is the student going to be educated at an approve institutions ?: ")

if gpa >=3.7:
    if insta_app  == "yes":
        print("The applicant qualifies for a lower APR student loans.")
    else: 
        print("The applicant doens't qualify since they have not been accepted into an approved institutions.")
else:
    print("The applicant did not have high enogh grade to qualify")
    
    
    