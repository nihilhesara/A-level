# Initializing variables
validation = True
oddList = []
evenList = []

# While true loop
while validation:

    # Getting inputs from the user
    num = int(input("Enter a number : "))

    # Check the number is odd or even
    if num % 2 == 0:
        print("Even number \n")
        evenList.append(num)

    else:
        print("Odd number \n")
        oddList.append(num)
    
    # Check user want to play again
    playAgain = input("Do you want to play again : ")

    while playAgain.lower() not in ['y','q']:
        playAgain = input("Do you want to play again : ")

    if playAgain.lower() == 'y':
        continue

    else:
        print("Quit the program \n")
        print("Odd List is ",oddList)
        print("Even List is ",evenList)
        validation = False

