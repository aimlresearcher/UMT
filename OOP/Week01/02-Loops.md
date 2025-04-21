# 🎓 Lecture: Loops in C++

## 🎯 Learning Objectives
By the end of this lecture, students will be able to:

✅ Understand the purpose and structure of loops  
✅ Use different types of loops: `for`, `while`, and `do-while`  
✅ Implement nested loops  
✅ Control loop execution using `break` and `continue`  
✅ Apply loops to solve real-world problems  

---

## 🧠 1. Introduction to Loops

A **loop** is a control structure that repeats a block of code **multiple times** based on a condition.

### ✅ Benefits of Loops:
- 🔁 Reduces code duplication  
- 🤖 Automates repetitive tasks  
- 🧩 Enhances logic building and flow control  

---

## 🔁 2. Types of Loops in C++

### 🔹 A. `for` Loop  
Used when the **number of iterations is known**.

### 🧱 Syntax:
```cpp
for (initialization; condition; update) {
    // body
}
```
### 🧪 Example:

```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 5; i++) {
        cout << "Iteration: " << i << endl;
    }
    return 0;
}
```
### 🔹 B. `while` Loop  
Used when the **number of iterations is unknown** and depends on a **condition**.

### 🧱 Syntax:
```cpp
while (condition) {
    // body
}
```
### 🧪 Example:

```cpp
#include <iostream>
using namespace std;

int main() {
    int i = 1;
    while (i <= 5) {
        cout << "Iteration: " << i << endl;
        i++;
    }
    return 0;
}
```
### 🔹 C. `do-while` Loop  
Like `while`, but it **runs at least once**, even if the condition is false.

### 🧱 Syntax:
```cpp
do {
    // body
} while (condition);
```
### 🧪 Example:

```cpp
#include <iostream>
using namespace std;

int main() {
    int i = 1;
    do {
        cout << "Iteration: " << i << endl;
        i++;
    } while (i <= 5);
    return 0;
}
```
## ⚙️ 3. Loop Control Statements

### 🔸 `break` Statement  
Used to **exit the loop prematurely** when a certain condition is met.

### 🛠️ Example:

```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) break;
        cout << i << " ";
    }
    return 0;
}
```
### 🔸 `continue` Statement  
Skips the **current iteration** and moves to the **next one**.

### 🛠️ Example:

```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 5; i++) {
        if (i == 3) continue;
        cout << i << " ";
    }
    return 0;
}
```
## 🔃 4. Nested Loops  
A **loop inside another loop**.

### 🛠️ Example: Multiplication Table

```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 3; i++) {
        for (int j = 1; j <= 3; j++) {
            cout << i << " x " << j << " = " << i * j << endl;
        }
        cout << "---" << endl;
    }
    return 0;
}
```
## 🧾 5. Real-World Applications of Loops

- Automating login attempts  
- Repeating menu options in applications  
- Generating tables and patterns  
- Counting, summing, or finding averages in data  

---

## ✏️ Classwork Exercises

### 🔹 Even Numbers Printer  
Print all even numbers from 1 to 50 using a `for` loop.

### 🔹 Password Verification  
Ask user for a password using `do-while`. Loop until correct password is entered.

### 🔹 Sum of Digits  
Input a number and find the sum of its digits using a `while` loop.

### 🔹 Pattern Printer  
Print the following pattern:

```cpp
*
**
***
****
```
## 📝 Homework Assignments

### 🔹 Factorial Calculator  
Input a number and calculate its factorial using a `for` loop.

### 🔹 Prime Checker  
Check whether a number is prime using a `for` loop.

### 🔹 Fibonacci Series  
Print first `n` terms of the Fibonacci series using a loop.

### 🔹 Multiplication Table Generator  
Ask the user for a number and print its multiplication table up to 10.

### 🔹 Reverse a Number  
Take a number and reverse its digits using a `while` loop.

---

## 📌 Summary Table

| Concept           | Description                         |
|-------------------|-------------------------------------|
| `for` loop        | Pre-determined iterations           |
| `while` loop      | Checks condition before each iteration |
| `do-while` loop   | Executes at least once              |
| `break`           | Exits loop prematurely              |
| `continue`        | Skips current iteration             |
| Nested loops      | Loop inside another loop            |
