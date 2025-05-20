
# 📘 Object Oriented Programming (C++)  
## Week 14 Reading Material  
### Topic: **Stream I/O in C++**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept of **streams** and their types in C++.
- Perform **input and output operations** using `cin`, `cout`, `cerr`, and `clog`.
- Use **file streams** (`ifstream`, `ofstream`, `fstream`) for file input/output.
- Apply formatting manipulators for better output control.
- Handle basic file errors using stream status functions.

---

## 1. 🔍 What is a Stream?

A **stream** is a flow of data. In C++, streams are used to perform **input and output (I/O)** operations.

- **Input stream**: Data flows from input device (e.g., keyboard) into the program (`cin`)
- **Output stream**: Data flows from the program to the output device (e.g., screen) (`cout`)

---

## 2. 📥 Standard I/O Streams

### `cin` – Standard Input
Used to receive input from the keyboard.

```cpp
int x;
cin >> x;
```

### `cout` – Standard Output
Used to display output to the console.

```cpp
cout << "Value: " << x << endl;
```

### `cerr` – Standard Error
Used to output error messages (unbuffered).

### `clog` – Log/Error Output
Used for error logging (buffered).

---

## 3. 📂 File I/O Streams

To work with files, include the `<fstream>` header.

### Opening Files:

```cpp
ifstream inFile("input.txt");
ofstream outFile("output.txt");
```

### Reading from a File:

```cpp
string line;
while (getline(inFile, line)) {
    cout << line << endl;
}
```

### Writing to a File:

```cpp
outFile << "Writing to file." << endl;
```

### Closing Files:

```cpp
inFile.close();
outFile.close();
```

---

## 4. 🛠️ File Stream Classes

| Stream Class | Description               |
|--------------|---------------------------|
| `ifstream`   | Input from files          |
| `ofstream`   | Output to files           |
| `fstream`    | Input and output in files |

---

## 5. 🧪 File Open Modes

Modes can be combined using the bitwise OR operator (`|`).

| Mode       | Description                        |
|------------|------------------------------------|
| `ios::in`  | Open for reading                   |
| `ios::out` | Open for writing                   |
| `ios::app` | Append to end of file             |
| `ios::trunc` | Truncate existing file to zero length |
| `ios::binary` | Open in binary mode             |

Example:
```cpp
ofstream file("data.txt", ios::out | ios::app);
```

---

## 6. 🎨 Output Formatting

C++ provides manipulators for formatted output (from `<iomanip>`).

| Manipulator | Purpose            |
|-------------|--------------------|
| `setw(n)`   | Set field width    |
| `setprecision(n)` | Set decimal precision |
| `fixed`     | Use fixed-point notation |
| `showpoint` | Show decimal point |

Example:

```cpp
#include <iomanip>
cout << fixed << setprecision(2) << 123.456; // Output: 123.46
```

---

## 7. ❗ Stream Status Checking

Check file state using member functions:

```cpp
ifstream file("data.txt");
if (!file) {
    cerr << "File not found!" << endl;
}
```

Common functions:
- `fail()`: returns true if an operation failed
- `eof()`: returns true if end-of-file reached
- `good()`: returns true if stream is OK

---

## 8. 💻 Hands-On Walkthrough: Read and Write

```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ofstream outFile("example.txt");
    outFile << "Hello, File!" << endl;
    outFile.close();

    ifstream inFile("example.txt");
    string line;
    while (getline(inFile, line)) {
        cout << line << endl;
    }
    inFile.close();
    return 0;
}
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is the purpose of `cin`, `cout`, and `cerr`?
2. Which header file is needed for file I/O?
3. How do you check if a file was opened successfully?
4. What does `ios::app` do?

### 💡 Exercise

Write a program to:
- Accept name and age from the user
- Save the information to a file
- Read and display the contents from the file

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 18  
- [GeeksforGeeks – File Handling](https://www.geeksforgeeks.org/file-handling-cpp/)

---
