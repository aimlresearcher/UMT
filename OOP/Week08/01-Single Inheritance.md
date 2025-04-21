# 🎓 Lecture: Single Inheritance in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand the concept of **single inheritance**  
✅ Write and analyze **C++ programs** using **single inheritance**  
✅ Identify real-world examples modeled using **single inheritance**  
✅ Differentiate **single inheritance** from other inheritance types (e.g., multiple, multilevel)  
✅ Solve practical OOP problems using **base** and **derived class** design

---

## 🧠 1. What Is Single Inheritance?

**Single inheritance** is the simplest form of inheritance in which a **derived class** inherits from **only one base class**.

---

### 💡 Real-Life Analogy:
- A **Student** is a **Person**  
- A **Manager** is an **Employee**  
- A **Car** is a **Vehicle**  

Each **derived class** is an extension of a single **parent class**.

---

## 🔧 2. Syntax of Single Inheritance

```cpp
class Base {
    // base members
};

class Derived : accessSpecifier Base {
    // derived members
};
```
### **accessSpecifier** can be **public**, **protected**, or **private**.

---

## 🔍 3. Code Example – Basic Single Inheritance

```cpp
#include <iostream>
using namespace std;

class Person {
public:
    string name;

    void display() {
        cout << "Name: " << name << endl;
    }
};

class Student : public Person {
public:
    int rollNo;

    void show() {
        cout << "Roll No: " << rollNo << endl;
    }
};

int main() {
    Student s;
    s.name = "Ali";
    s.rollNo = 101;

    s.display();  // inherited from Person
    s.show();     // defined in Student
}
```
### 🔹 Output:

```cpp
Name: Ali
Roll No: 101
```
## ✅ Here, **Student** inherits from **Person** and reuses its **display()** function.

---

## 📚 4. Characteristics of Single Inheritance

| Feature               | Description                                  |
|-----------------------|----------------------------------------------|
| **Inherits from**      | One **base class**                           |
| **Simplicity**         | Easy to understand and manage                |
| **Hierarchical Design**| Allows foundational **base class** creation |
| **Reusability**        | Avoids **code duplication**                  |

---

## 🔁 5. Common Use Cases
- **Base Class** contains **common data/functions**
- **Derived Class** adds **specific behavior**

---

### 🔸 Example: Employee and Manager

```cpp
class Employee {
public:
    string name;
    float salary;

    void printSalary() {
        cout << "Salary: " << salary << endl;
    }
};

class Manager : public Employee {
public:
    float bonus;

    void printTotalPay() {
        cout << "Total Pay: " << salary + bonus << endl;
    }
};
```
## 🧪 6. Function Overriding in Single Inheritance

```cpp
class Animal {
public:
    void speak() {
        cout << "Generic animal sound" << endl;
    }
};

class Dog : public Animal {
public:
    void speak() {
        cout << "Bark!" << endl;
    }
};

int main() {
    Dog d;
    d.speak(); // Overridden version in Dog
}
```
## 🧾 Summary Table: Single Inheritance

| Aspect            | Description                                      |
|-------------------|--------------------------------------------------|
| **Number of Parents** | One **base class**                             |
| **Code Reuse**    | Yes                                              |
| **Simplicity**    | High                                             |
| **Polymorphism**  | Supported (with **virtual functions**)           |
| **Common in**     | Simple and modular **OOP systems**              |

---

## ✏️ Classwork Exercises

### 🔸 Vehicle and Car
- **Base**: `Vehicle` has method `start()`  
- **Derived**: `Car` adds method `drive()`  
- Create an object and call both methods

### 🔸 Employee and Developer
- **Base**: `name`, `salary`  
- **Derived**: `language`, `showDeveloperInfo()`

### 🔸 Override a Base Function
- Create **base class** `Printer` with method `print()`  
- **Derived class** `ColorPrinter` overrides `print()`

---

## 📝 Homework Assignments

### 🔸 Account and SavingAccount
- Add `calculateInterest()` in **derived class**  
- **Base class** contains `accountNumber`, `balance`

### 🔸 Appliance and WashingMachine
- Override a function to show **advanced washing modes**  
- Use **setter methods** in **base class** to initialize data

### 🔸 Constructor Chaining
- Demonstrate **constructor** and **destructor** order in **single inheritance** with two classes

---

## 💬 Final Thought

**Single inheritance** is a core **OOP** building block, perfect for designing **clean** and **scalable systems**. It allows **code reuse**, **clear extension**, and basic **polymorphism** through one parent-child relationship.
