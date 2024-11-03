# try, except

x = 5
y = "hello"

try:
    z = x + y
except TypeError:
    print("Can't add Integer and a String")

#___________________________________________________________

# try, except, else

try:
    print("Hello, world!")
except:
    print("Something went wrong")
else:
    print("Nothing went wrong")

#___________________________________________________________

# try, except, finally

try:
    print(a)
except:
    print("Something went wrong")
else:
    print("The try except is finished")