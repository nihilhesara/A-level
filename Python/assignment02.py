def check(num):
    if num == 1:
        print("True")
    elif num == 0:
        print("False")
    else:
        print("Not a valid input")

num = int(input("Enter 0 or 1 to execute the program : "))

check(num)