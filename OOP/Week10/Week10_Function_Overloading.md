
# 📘 Object Oriented Programming (C++)  
## Week 10 Reading Material  
### Topic: **Function Overloading**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept and purpose of **function overloading**.
- Differentiate between overloaded and overridden functions.
- Apply function overloading in real-world C++ code.
- Identify the rules and best practices for overloading.
- Troubleshoot common errors in overloaded functions.

---

## 1. 🔍 Introduction to Function Overloading

Function overloading is a type of **polymorphism** in C++. It allows multiple functions to have the **same name** but with **different parameters**.

### Why use it?
- To increase code **readability** and **reusability**.
- To allow functions to **behave differently** based on input.
- To follow the **DRY** (Don't Repeat Yourself) principle.

### Real-world Analogy:
Imagine a smartphone that can "unlock" with a PIN, fingerprint, or face scan. The **action is the same** (unlock), but the **input method** is different.

---

## 2. 🧬 Syntax and Examples

### General Syntax:

```cpp
return_type function_name(parameter_list);
```

When overloading:
```cpp
void display();
void display(int);
void display(double, int);
```

### Example:

```cpp
#include <iostream>
using namespace std;

void print(int i) {
    cout << "Printing int: " << i << endl;
}

void print(double d) {
    cout << "Printing double: " << d << endl;
}

void print(string s) {
    cout << "Printing string: " << s << endl;
}

int main() {
    print(10);         // Calls int version
    print(3.14);       // Calls double version
    print("Hello");    // Calls string version
    return 0;
}
```

---

## 3. 🧠 Function Signature and Resolution

Function overloading is resolved at **compile time**, hence it is a form of **static polymorphism**.

### What constitutes a unique signature?

- Number of parameters  
- Type of parameters  
- Order of parameters

⚠️ **Note:** Return type alone does **not** make functions different.

```cpp
int add(int a, int b);
float add(int a, int b); // ❌ Error! Return type is not considered in overloading.
```

---

## 4. 🚀 Use Cases and Benefits

### Typical Use Cases:
- Math operations: `add(int, int)`, `add(double, double)`
- Displaying output in different formats
- Constructors with various arguments

### Benefits:
- Simplified interface for developers  
- Code reusability and abstraction  
- Easier maintenance and extension  

---

## 5. ✅ Best Practices and Pitfalls

### ✔️ Do’s:
- Ensure each overload has a distinct signature.
- Use default arguments wisely (but carefully).
- Group related overloads together for clarity.

### ❌ Don’ts:
- Don’t rely on return type for distinguishing functions.
- Avoid ambiguous overloads:

```cpp
void print(int x);
void print(float x); // Calling print(2) may cause ambiguity.
```

### Ambiguity Example:

```cpp
void func(int);
void func(double);

func(5); // Which one? `int` or `double`?
```

To avoid ambiguity, use **explicit casting**.

---

## 6. 💻 Hands-On Walkthrough: Calculator

### Objective:
Overload the `calculate` function to handle different operations.

```cpp
#include <iostream>
using namespace std;

int calculate(int a, int b) {
    return a + b;
}

double calculate(double a, double b) {
    return a * b;
}

string calculate(string a, string b) {
    return a + b;
}

int main() {
    cout << "Int: " << calculate(2, 3) << endl;
    cout << "Double: " << calculate(2.5, 4.0) << endl;
    cout << "String: " << calculate("Hello, ", "World!") << endl;
    return 0;
}
```

---

## 7. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz (Answer in your notebook)

1. What is function overloading?
2. Is the return type part of the function signature in overloading?
3. What are the benefits of using overloaded functions?
4. What will be the output of the following code?

```cpp
void show(int x);
void show(float x);

int main() {
    show(3.5);
}
```

### 💡 Exercise

Write overloaded functions named `area()` to calculate:

- Area of a square (given one side)
- Area of a rectangle (given length and width)
- Area of a circle (given radius)

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 11  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 7 (Polymorphism)  
- [GeeksforGeeks Function Overloading](https://www.geeksforgeeks.org/function-overloading-c/)

---
