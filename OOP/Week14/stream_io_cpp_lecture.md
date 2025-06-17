
# Lecture on Stream I/O in C++

In C++, Stream I/O (Input/Output) is a mechanism that allows us to interact with the external environment, such as reading data from files or writing data to files, as well as reading from and writing to the console.

In this lecture, we will cover the basics of Stream I/O, different types of streams, and how to use them in C++ for file operations and console input/output.

## 1. What are Streams in C++?

A **stream** is an abstraction that allows data to flow in and out of a program. C++ provides streams for both input (reading data) and output (writing data). Streams act as a conduit between the program and the external world.

There are two major types of streams in C++:
- **Input Stream**: Used for reading data (from a keyboard, file, etc.).
- **Output Stream**: Used for writing data (to a screen, file, etc.).

C++ uses **stream objects** that are instances of classes to manage these streams. The two primary classes are:
- **`istream`**: Used for input operations.
- **`ostream`**: Used for output operations.

## 2. Standard Streams in C++

C++ provides three standard streams:
1. **`cin`**: Standard input stream (usually for reading from the keyboard).
2. **`cout`**: Standard output stream (usually for writing to the console).
3. **`cerr`**: Standard error stream (used for error messages).

### Example:
```cpp
#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Enter a number: "; // Output to console
    cin >> num; // Input from user
    cout << "You entered: " << num << endl;
    return 0;
}
```

Here, `cout` is used to display a prompt, and `cin` is used to read input from the user.

## 3. File I/O in C++

In C++, you can also use streams to read from and write to files. For this, we use the classes from the `fstream` library:
- **`ifstream`**: Input file stream (for reading from files).
- **`ofstream`**: Output file stream (for writing to files).
- **`fstream`**: Combined input/output file stream (for both reading and writing).

### File Operations:
1. **Opening a File**: To perform operations on a file, you first need to open it.
2. **Reading/Writing**: After opening a file, you can read from or write to it.
3. **Closing a File**: After performing the I/O operations, always close the file to ensure that all data is saved and resources are released.

### Basic Syntax:
- **`ifstream` for reading**:
```cpp
ifstream inFile("example.txt"); // Open file for reading
if (inFile) {
    string line;
    while (getline(inFile, line)) {
        cout << line << endl; // Display content of the file
    }
    inFile.close(); // Close file
} else {
    cout << "Error opening file." << endl;
}
```

- **`ofstream` for writing**:
```cpp
ofstream outFile("output.txt"); // Open file for writing
if (outFile) {
    outFile << "Hello, World!" << endl; // Write to file
    outFile.close(); // Close file
} else {
    cout << "Error opening file." << endl;
}
```

- **`fstream` for both reading and writing**:
```cpp
fstream file("example.txt", ios::in | ios::out);
if (file) {
    string line;
    while (getline(file, line)) {
        cout << line << endl; // Read from file
    }
    file.seekp(0, ios::end); // Move to the end to write
    file << "Adding new line." << endl; // Write to file
    file.close(); // Close file
} else {
    cout << "Error opening file." << endl;
}
```

## 4. File Modes in C++

When opening a file, you can specify the mode in which you want to open the file:
- **`ios::in`**: Open file for reading.
- **`ios::out`**: Open file for writing.
- **`ios::app`**: Append to the end of the file.
- **`ios::ate`**: Move to the end of the file immediately upon opening.
- **`ios::trunc`**: (default) Truncate the file to zero length when opened for writing.
- **`ios::binary`**: Open the file in binary mode.

### Example:
```cpp
ofstream outFile("example.txt", ios::out | ios::app); // Open for appending
outFile << "This is appended text." << endl;
outFile.close();
```

## 5. Error Handling in File I/O

When performing file operations, it’s important to check whether the file has been opened successfully. This can be done using the `is_open()` function, or by checking the stream itself in an `if` condition.

### Example:
```cpp
ifstream inFile("nonexistent.txt");
if (!inFile.is_open()) {
    cerr << "Failed to open the file!" << endl;
} else {
    // File operations
    inFile.close();
}
```

## 6. Formatted Input/Output

C++ supports formatted input and output, allowing you to specify the format in which data is displayed or read.

- **Set Precision**: You can control the number of decimal places for floating-point values using `setprecision()` from `<iomanip>`.

```cpp
#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    double value = 3.14159;
    cout << fixed << setprecision(2) << value << endl; // Output: 3.14
    return 0;
}
```

## 7. Conclusion

Stream I/O is a fundamental concept in C++ programming that enables interaction with external data sources like the keyboard, console, and files. Understanding how to use `cin`, `cout`, `ifstream`, `ofstream`, and `fstream` will allow you to handle input and output in your C++ applications effectively. It's also important to handle errors and close files properly after use.

### Additional Practice:
- Try writing a program that reads multiple lines from a file and outputs them to the console.
- Create a program that writes data to a file, then reads it back and displays the content.

---

This concludes the lecture on Stream I/O in C++. Let me know if you need further clarification or examples!
