# Creating functions for operators
def add(num1,num2):
    return num1 + num2

def sub(num1,num2):
    return num1 - num2

def mul(num1,num2):
    return num1 * num2

def div(num1,num2):
    return num1 / num2

def mod(num1,num2):
    return num1 % num2

def power(num1,num2):
    return num1 ** num2

#__________________________________________________________________
# MAIN PROGRAM

# Getting inputs
operator = input("Enter a operator : ")
print("")
number1 = int(input("Enter number : "))
number2 = int(input("Enter number : "))

# Calling the function using nested if 
if operator == '+':
    print(f"\nAddition is = {add(number1,number2)}")

elif operator == '-':
    print(f"\nSubstraction is = {sub(number1,number2)}")

elif operator == '*':
    print(f"\nMultiplication is = {mul(number1,number2)}")

elif operator == '/':
    print(f"\nDivision is = {div(number1,number2)}")

elif operator == '%':
    print(f"Modules is = {mod(number1,number2)}")

elif operator == '**':
    print(f"Power is = {power(number1,number2)}")

else:
    print("Invalid operator!!!")

