# 🎓 Lecture: Functions in C++

## 🎯 Learning Objectives
By the end of this lecture, students will be able to:

✅ Understand what functions are and why they are used.  
✅ Define and invoke functions in C++.  
✅ Explain function types: user-defined, built-in, and recursive.  
✅ Use function prototypes and understand scope and lifetime of variables.  
✅ Differentiate between parameter passing methods.  
✅ Apply function overloading and default arguments.  

---

## 🧠 1. Introduction to Functions

A **function** is a reusable block of code that performs a specific task. It helps break a complex program into smaller, manageable pieces.

### 🔹 Why Use Functions?

🧩 **Modularity**: Breaks the program into logical blocks.  
♻️ **Reusability**: Write once, use many times.  
📖 **Readability**: Easier to understand.  
🛠️ **Debugging**: Isolate errors in individual blocks.  
🧹 **Maintenance**: Easier to modify and update.  

---

## 🧱 2. Syntax and Structure of a Function

```cpp
return_type function_name(parameter_list) {
    // body of function
    return value; // if return_type is not void
}
```
## 🧾 Terminology

🔸 **`return_type`**: The type of value the function returns (`int`, `float`, `void`, etc.)  
🔸 **`function_name`**: A unique name to identify the function.  
🔸 **`parameter_list`**: Input variables (can be empty).  
🔸 **`return`**: Ends function and returns value (if not `void`).  

---

## 💡 3. Example: A Simple Function

```cpp
#include <iostream>
using namespace std;

int add(int a, int b) {
    return a + b;
}

int main() {
    int result = add(5, 3);
    cout << "Sum: " << result << endl;
    return 0;
}
```
## 🧰 4. Function Declaration (Prototype)

A **function prototype** is a declaration of a function before it is used.  
It tells the compiler about the function name, return type, and parameters.

🧾 **Why use it?**  
It allows the function to be defined **after** the `main()` function or used in multiple files.

---

### 🛠️ Example:

```cpp
int add(int, int); // prototype

int main() {
    cout << add(2, 3);
}

int add(int a, int b) {
    return a + b;
}
```
## 💬 Why Use Prototypes?

To tell the compiler what the function looks like **before its actual definition**.  
📌 Especially useful when `main()` comes **before** the function definition.

---

## 🧾 5. Types of Functions

### 1️⃣ Built-in Functions  
These are **functions already provided by C++**, available through standard libraries.

🛠️ **Example:**

```cpp
#include <iostream>
#include <cmath> // Required for sqrt

using namespace std;

int main() {
    cout << sqrt(16); // sqrt is a built-in function from <cmath>
    return 0;
}
```
### 2️⃣ User-Defined Functions  
These are **functions written by the programmer** to perform specific tasks.

🧠 Custom logic → Custom function!  
You decide the name, parameters, and logic.

---

### 3️⃣ Void Functions  
These are **functions that do not return a value**.  
Used when you just want to **perform an action**, like displaying a message.

🛠️ **Example:**

```cpp
#include <iostream>
using namespace std;

void greet() {
    cout << "Welcome to OOP in C++!" << endl;
}

int main() {
    greet(); // Function call
    return 0;
}
```
## 📤 6. Function Parameters and Arguments

### 1️⃣ Pass by Value  
A **copy of the data** is passed to the function.  
🧪 The **original value remains unchanged**.

---

🛠️ **Example:**

```cpp
#include <iostream>
using namespace std;

void square(int x) {
    x = x * x;
}

int main() {
    int a = 5;
    square(a);
    cout << a; // Output: 5 (not changed)
    return 0;
}
```
### 2️⃣ Pass by Reference  
The function receives the **address of the actual variable**,  
so it can **modify the original value** directly.  
📌 Changes made inside the function affect the original variable.

---

🛠️ **Example:**

```cpp
#include <iostream>
using namespace std;

void square(int &x) {
    x = x * x;
}

int main() {
    int a = 5;
    square(a);
    cout << a; // Output: 25
    return 0;
}
```
### 3️⃣ Pass by Pointer  
This is **similar to Pass by Reference**, but uses **pointers**.  
📌 The function receives the **memory address** of the variable and accesses the value using the `*` (dereference) operator.

---

🛠️ **Example:**

```cpp
#include <iostream>
using namespace std;

void square(int* x) {
    *x = (*x) * (*x);
}

int main() {
    int a = 5;
    square(&a); // Pass the address of 'a'
    cout << a;  // Output: 25
    return 0;
}
```
## 📚 7. Default Arguments

You can **assign default values** to function parameters.  
📌 If the caller **doesn't provide an argument**, the **default value is used**.

---

🛠️ **Example:**

```cpp
#include <iostream>
using namespace std;

int multiply(int a, int b = 2) {
    return a * b;
}

int main() {
    cout << multiply(5) << endl;    // Uses default b = 2 → Output: 10
    cout << multiply(5, 3) << endl; // Uses provided b = 3 → Output: 15
    return 0;
}
```
## ♻️ 8. Recursion  
A function that calls itself.

```cpp
#include <iostream>
using namespace std;

int factorial(int n) {
    if (n == 1) return 1;
    return n * factorial(n - 1);
}

int main() {
    cout << factorial(5); // Output: 120
    return 0;
}
```
## 🧠 Important  
Recursion must have a **base condition** to avoid infinite calls.

---

## ⚖️ 9. Function Overloading  
Defining multiple functions with the **same name** but **different parameter lists**.

```cpp
#include <iostream>
using namespace std;

int add(int a, int b) {
    return a + b;
}

float add(float a, float b) {
    return a + b;
}

int main() {
    cout << add(2, 3) << endl;        // int version
    cout << add(2.5f, 3.2f) << endl;  // float version
    return 0;
}
```
## 🌍 10. Scope and Lifetime of Variables

🔹 **Local Variable**: Declared inside a function. Exists only during function execution.  
🔹 **Global Variable**: Declared outside all functions. Accessible throughout the file.

```cpp
#include <iostream>
using namespace std;

int x = 10; // global

void print() {
    int x = 5; // local
    cout << x;
}

int main() {
    print();     // Output: 5 (local variable used)
    cout << x;   // Output: 10 (global variable)
    return 0;
}
```
## ✏️ Classwork Exercises

🔢 **Simple Calculator**  
Write a function-based calculator that performs:
- Add
- Subtract
- Multiply
- Divide

🔁 **Swap by Reference**  
Create a function that swaps two integers using reference parameters.

🧮 **Even or Odd Checker**  
Write a function `bool isEven(int n)` that returns `true` if a number is even.

📐 **Function Overloading: Area Calculator**  
Create overloaded functions to compute the area of:
- A square
- A rectangle
- A circle

---

## 📝 Homework Assignments

🏦 **Bank Transaction System**  
Create functions for:
- Deposit
- Withdraw
- Check balance  
Use global and local variables where applicable.

🌀 **Recursive Problem**  
Write a recursive function to find the **nth Fibonacci number**.

🔍 **Function Debugging Practice**  
Analyze a buggy function that fails to return correct values and **fix it**.

🎓 **Student Grade Evaluator**  
Create a function that accepts marks and returns a grade (`'A'`, `'B'`, etc.)

📊 **Factor Finder**  
Write a function `void printFactors(int n)` that displays **all factors of `n`**.

---

## 📌 Summary Table

| Concept              | Description                        |
|----------------------|------------------------------------|
| Function             | Reusable block of code             |
| Return Type          | Data type of returned value        |
| Parameters           | Input values to functions          |
| Pass by Value        | Copy passed                        |
| Pass by Reference    | Actual variable passed             |
| Default Arguments    | Parameter defaults if not provided |
| Function Overloading | Same name, different parameters    |
| Recursion            | Function calls itself              |
| Scope                | Accessibility of variable          |
