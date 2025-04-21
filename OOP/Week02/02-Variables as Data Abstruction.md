# 🎓 Lecture: Variables as Data Abstraction in C++

## 🎯 Learning Objectives

By the end of this section, students will be able to:

✅ Understand the concept of data abstraction using variables  
✅ Identify how basic data types in C++ (`int`, `float`, `char`) serve as abstraction layers  
✅ Use variables to hide data complexity and enhance readability  
✅ Write and interpret simple programs using these data types with abstraction in mind  

---

## 🧠 1. What Is Data Abstraction?

Data abstraction refers to **providing only essential information** to the outside world and **hiding the background details or implementation**.

In C++, when we use variables, we **abstract the memory and behavior of data** behind a meaningful name and type.

---

## 💬 Real-Life Analogy

💡 You don't need to know how electricity flows to use a light switch — just turn it on.  
Similarly, you use `int age = 25;` without knowing the binary representation or memory address.

---

## 🧮 2. Variables as Data Abstraction

A variable is an **abstraction of memory**.

```cpp
int age = 25;
```
### Behind the scenes:

- 💾 4 bytes of memory are allocated  
- 🔢 The binary equivalent of `25` is stored  
- 🙈 You never deal with this complexity — you just use the variable `age`

---

## 🔢 3. `int` Abstraction

### 🔹 Purpose:  
Used to store **whole numbers**.

```cpp
int studentCount = 50;
```
💡 You don’t worry about how `50` is stored in binary.  
The abstraction is: **“studentCount is an integer.”**

---

### 🔍 Internal View:

- Typically occupies **4 bytes**  
- Uses **two’s complement** for negative values  

---

### ✅ Example:

```cpp
int apples = 10;
int oranges = 15;
int totalFruits = apples + oranges;
cout << "Total: " << totalFruits << endl;
```
## 🌊 4. `float` Abstraction

### 🔹 Purpose:  
Stores **real numbers** (with decimals).

```cpp
float temperature = 36.5;
```
💡 You are abstracted from the floating-point representation — you just know `temperature` is 36.5.

---

### 🔍 Internal View:

- Typically occupies **4 bytes**  
- Stored in **IEEE 754** format  

---

### ✅ Example:

```cpp
float length = 5.7;
float width = 2.3;
float area = length * width;
cout << "Area: " << area << endl;
```
## 🔤 5. `char` Abstraction

### 🔹 Purpose:  
Stores a **single character** using **ASCII** or **Unicode** encoding.

```cpp
char grade = 'A';
```
💡 Behind the scenes, `'A'` is stored as `65` (ASCII),  
but we deal with it as a **character**, not a number.

---

### ✅ Example:

```cpp
char gender = 'M';
cout << "Gender: " << gender << endl;
```
## 📋 6. Why These Are Abstractions?

| Type  | What You See | What Happens Internally           |
|-------|---------------|-----------------------------------|
| `int` | 10            | Stored as binary in memory        |
| `float` | 3.14        | Converted to IEEE format          |
| `char` | 'B'          | Stored as ASCII value (e.g., 66)  |

You **never manipulate memory manually** —  
the **data type** and **variable name** act as layers of **abstraction**.

---

## ✏️ Classwork Exercises

### 🔹 Basic Arithmetic  
Declare 3 `int` variables: `a`, `b`, `c`.  
Input values and print their **sum**, **average**, and **product**.

---

### 🔹 Rectangle Area  
Use `float` to calculate and display the **area of a rectangle**.

---

### 🔹 Grade Display  
Declare a `char` variable for grade and display a message:

```cpp
cout << "Your grade is: " << grade;
```
### 🔹 ASCII Checker  
Input a character and print its ASCII value using:

```cpp
cout << "ASCII: " << (int)yourChar;
```
## 📝 Homework Assignments

### 🔹 Bank Deposit  
Declare variables: `int accountNo`, `float balance`.  
Ask user for amount to deposit and update balance.

---

### 🔹 BMI Calculator  
Input `float weight` and `float height`, calculate BMI:

$BMI=\frac{weight}{height*height}$

---

### 🔹 Character Case Converter  
Input a lowercase letter, convert it to uppercase using **ASCII values**.

---

### 🔹 User Profile Summary  
Declare variables: `char gender`, `int age`, `float GPA`.  
Print all data in a **formatted summary**.

---

## 🧩 Summary Table

| Data Type | Used For         | Example Value | Abstraction Layer         |
|-----------|------------------|----------------|---------------------------|
| `int`     | Whole numbers     | 20             | Abstracts integer memory  |
| `float`   | Decimal numbers   | 3.14           | Abstracts float encoding  |
| `char`    | Characters        | 'A'            | Abstracts ASCII/Unicode   |
