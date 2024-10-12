odd_list = []
even_list = []

for i in range(1,11):
    number = int(input(f"Enter number {i} : "))

    if number % 2 == 0:
        odd_list.append(number)
    else:
        even_list.append(number)

print("Odd List is = ",odd_list)
print(f"Even List is = {even_list}")