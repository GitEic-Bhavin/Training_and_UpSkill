# Professor Fuentes teaches a Python class and uses the following grading scale for all of her exams. 
# You work as a teacher's assistant and due to her busy schedule she has requested that you write a program which will determine the grades of the class's students.
# Her grading scale is as follows:
# A score of 90 or above is an A
# A score of 80 or above is a B
# A score of 70 or above is a C
# A score of 60 or above is a D
# A score any lower is an F
# For this exercise, start by creating a variable and assigning that variable a student's score as an integer using input().
# Then, using nested if and else statements and the following set of rules, determine and then display the student's grade along with their score using print(). 
# If the student's score is greater than or equal to 90, then the student will receive an A grade.
# Otherwise, if the student's score is greater than or equal to 80, then the student will receive an B grade.
# Otherwise, if the student's score is greater than or equal to 70, then the student will receive an C grade.
# Otherwise, if the student's score is greater than or equal to 60, then the student will receive an D grade.
# Otherwise, the student will receive an F grade.
# Make sure to run your program multiple times and test it with values for each 5 of the different grades to make sure that the correct output is displayed for any value entered as a student's score.


score=int(input("Enter stdent scores here: "))

if score >= 90:
    print("The student scores is " + str(score) + " and grade is A")
    if score >=80:
        print("The student scores is " + str(score) + " and grade is B")
        if score >=70:
            print("The student scores is " + str(score) + " and grade is c")
            if score >=60:
                print("The student scores is " + str(score) + " and grade is d")
else:
    print("The student scores is " + str(score) + " and grade is F")