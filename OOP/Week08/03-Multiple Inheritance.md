# 🎓 Lecture: Multiple Inheritance in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand the concept and structure of **multiple inheritance**  
✅ Write and analyze programs with **multiple base classes**  
✅ Apply **constructor** and **method resolution** in multiple inheritance  
✅ Understand the **diamond problem** and how **virtual inheritance** solves it  
✅ Model real-world systems using **multiple inheritance**

---

## 🧠 1. What Is Multiple Inheritance?

**Multiple Inheritance** allows a class to inherit from **more than one base class**.

This means the derived class can access members from **multiple parent classes**, combining their behaviors and attributes.

---

### 💡 Real-Life Analogy:
- A **SmartPhone** is both a **Camera** and a **Phone**.
- A **Person** can be a **Student** and an **Employee**.
- A **Vehicle** may act as a **Transporter** and a **FuelConsumer**.

---

## 🔧 2. Syntax of Multiple Inheritance

```cpp
class A {
    // base class A
};

class B {
    // base class B
};

class C : public A, public B {
    // derived from both A and B
};
```
## ✅ 3. Basic Example

```cpp
#include <iostream>
using namespace std;

class Teacher {
public:
    void teach() {
        cout << "Teaching..." << endl;
    }
};

class Researcher {
public:
    void research() {
        cout << "Researching..." << endl;
    }
};

class Professor : public Teacher, public Researcher {
public:
    void guide() {
        cout << "Guiding students..." << endl;
    }
};

int main() {
    Professor p;
    p.teach();
    p.research();
    p.guide();
}
```
## 🔍 Output:

```cpp
Teaching...
Researching...
Guiding students...
```
## ✅ Professor class inherits functionality from both Teacher and Researcher.

---

## 📚 4. Constructor Execution Order

Constructors of base classes are called in the **order** they are listed in the inheritance list.

```cpp
class A {
public:
    A() { cout << "Constructor A\n"; }
};

class B {
public:
    B() { cout << "Constructor B\n"; }
};

class C : public A, public B {
public:
    C() { cout << "Constructor C\n"; }
};
```
## 🔍 Output:

```cpp
Constructor A
Constructor B
Constructor C
```
## ⚠️ 5. The Diamond Problem

Occurs when a class inherits from **two classes** that both inherit from the same **base class**.

```cpp
class A {
public:
    void show() { cout << "A's show()" << endl; }
};

class B : public A {};
class C : public A {};

class D : public B, public C {}; // Ambiguity!
```
```cpp
int main() {
    D obj;
    // obj.show(); ❌ Ambiguity! Which show()?
}
```
## ✅ 6. Solution: Virtual Inheritance

```cpp
class A {
public:
    void show() { cout << "A's show()" << endl; }
};

class B : virtual public A {};
class C : virtual public A {};

class D : public B, public C {};

int main() {
    D obj;
    obj.show(); // ✅ No ambiguity
}
```
## 🧠 Virtual inheritance ensures only one copy of A exists in D.

---

## 🧾 Summary Table

| Feature             | Description                                  |
|---------------------|----------------------------------------------|
| **Multiple Inheritance** | Inherit from more than one base class    |
| **Syntax**           | `class C : public A, public B`              |
| **Constructor Order** | As per base class declaration order         |
| **Diamond Problem**  | Ambiguity when base appears multiple times   |
| **Solution**         | Use **virtual** keyword for base inheritance |

---

## ✏️ Classwork Exercises

### 🔸 Device and Communication Classes
- **Device** has `powerOn()`  
- **Communication** has `connect()`  
- **SmartPhone** inherits from both  

### 🔸 Writer and Editor
- **Writer**: `write()`  
- **Editor**: `edit()`  
- **Author**: inherits both and adds `publish()`

### 🔸 Use Virtual Inheritance
- Model **A → B**, **A → C**, **B + C → D**  
- Demonstrate ambiguity and fix it

---

## 📝 Homework Assignments

### 🔸 Banking System
- **Base**: `Account`, `Loan`  
- **Derived**: `Customer` (inherits both)  
- Add method `getDetails()` combining both aspects

### 🔸 Person → Student + Employee → WorkingStudent
- Apply **virtual inheritance** to avoid multiple copies of **Person**

### 🔸 Vehicle + GPS
- Create a class that inherits **movement functionality** and **tracking behavior**

### 🔸 Create UML + Implementation
- Draw **UML** for multiple inheritance (e.g., **Instructor** from **Teacher** and **Mentor**)  
- Implement it in **C++** and handle **function conflicts**

---

## 💬 Final Thought

**Multiple inheritance** enables powerful class design, allowing **reuse** from multiple sources. However, it introduces complexity like the **diamond problem**, which must be handled using **virtual inheritance** and clear **method resolution**.
