# File Creation
try:
    # Open the file in write mode ('w')
    with open("my_file.txt", 'w') as file:
        # Write three lines of text to the file
        file.write("This is line 1\n")
        file.write("12345\n")
        file.write("Line 3 with special characters: #$@!\n")
    print("File created successfully and initial content written.")
except FileNotFoundError:
    print("File not found. Please check the file path or permissions.")
except PermissionError:
    print("Permission denied to create or write to the file.")
finally:
    print()

# File Reading and Display
try:
    # Open the file in read mode ('r')
    with open("my_file.txt", 'r') as file:
        # Read and display the contents of the file
        print("Contents of my_file.txt:")
        print(file.read())
except FileNotFoundError:
    print("File not found. Please check the file path or permissions.")
except PermissionError:
    print("Permission denied to read the file.")
finally:
    print()

# File Appending
try:
    # Open the file in append mode ('a')
    with open("my_file.txt", 'a') as file:
        # Append three additional lines of text to the file
        file.write("This is line 4 (appended)\n")
        file.write("98765 (appended)\n")
        file.write("Another line with special characters: *&^%\n")
    print("Content appended successfully.")
except FileNotFoundError:
    print("File not found. Please check the file path or permissions.")
except PermissionError:
    print("Permission denied to append to the file.")
finally:
    print()
