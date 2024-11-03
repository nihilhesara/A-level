import os

# Change working directory to the script's location
os.chdir(os.path.dirname(os.path.abspath(__file__)))

#___________________________________________________________

# Read to a file

with open("demo.txt", "r") as f:
    print(f.read())
    f.close()

#___________________________________________________________

# Write to a file

f = open("demofile.txt", "w")
f.write("Writing on a new file")
f.close()

"""Don't create demofile.txt it creates autoatically with the write mode"""

#___________________________________________________________

# Append to a file

with open("demo.txt", "a") as f:
    f.write("Now thw file has more content")
    f.close()