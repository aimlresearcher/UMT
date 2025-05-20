
# 📘 Object Oriented Programming (C++)  
## Week 16 Reading Material  
### Topic: **Exception Handling in C++**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept of **exceptions** and error handling.
- Use `try`, `catch`, and `throw` statements to handle exceptions.
- Create custom exception classes for specific error types.
- Handle multiple exceptions in a robust manner.
- Write safe, crash-resistant C++ programs.

---

## 1. ❗ What is Exception Handling?

**Exception Handling** is a mechanism to handle **runtime errors** and ensure the program does not crash unexpectedly. It separates error-handling code from regular logic.

---

## 2. 🧱 Basic Syntax

```cpp
try {
    // Code that may throw an exception
}
catch (ExceptionType e) {
    // Handle the exception
}
```

### Example:

```cpp
try {
    throw 10;
}
catch (int e) {
    cout << "Exception caught: " << e << endl;
}
```

---

## 3. 🚀 Why Use Exceptions?

- To detect and respond to **errors at runtime**.
- To maintain **clean and readable** code.
- To provide **graceful error handling** in critical systems.

---

## 4. 🎯 The `throw` Keyword

Used to signal the occurrence of an exceptional condition.

```cpp
throw value;
```

You can throw:
- Built-in types (`int`, `float`, etc.)
- Class objects
- Custom exception types

---

## 5. 🧲 The `catch` Block

Handles specific types of exceptions. You can define multiple catch blocks for different types:

```cpp
try {
    // ...
}
catch (int x) { }
catch (char y) { }
catch (...) {
    // Catch all
}
```

---

## 6. 🧰 Custom Exception Classes

Define your own exception class to provide more context:

```cpp
class MyException {
public:
    const char* what() const {
        return "Custom exception occurred";
    }
};
```

### Usage:

```cpp
try {
    throw MyException();
}
catch (MyException& e) {
    cout << e.what();
}
```

---

## 7. 📛 Standard Exceptions

C++ Standard Library provides a set of predefined exceptions in `<stdexcept>`:

- `std::exception`
- `std::runtime_error`
- `std::out_of_range`
- `std::invalid_argument`

Example:

```cpp
#include <stdexcept>

throw std::runtime_error("Something went wrong");
```

---

## 8. 🧪 Exception Propagation

Exceptions can be propagated up the call stack:

```cpp
void func() {
    throw 42;
}

int main() {
    try {
        func();
    } catch (int e) {
        cout << "Caught in main: " << e;
    }
}
```

---

## 9. 💻 Hands-On Walkthrough

```cpp
#include <iostream>
using namespace std;

int divide(int a, int b) {
    if (b == 0)
        throw "Division by zero error";
    return a / b;
}

int main() {
    try {
        cout << divide(10, 0);
    } catch (const char* msg) {
        cout << "Exception: " << msg << endl;
    }
}
```

---

## 10. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is the purpose of the `try` block?
2. Can we catch multiple types of exceptions?
3. What does the `catch(...)` block do?
4. How do you create a custom exception?

### 💡 Exercise

Write a program that:
- Reads two integers from the user
- Throws an exception if the second number is zero
- Catches and handles the exception with a meaningful message

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 22  
- [GeeksforGeeks – Exception Handling in C++](https://www.geeksforgeeks.org/exception-handling-c/)

---
