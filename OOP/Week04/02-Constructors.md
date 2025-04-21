# 🎓 Lecture: Constructors in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand what a constructor is and its purpose  
✅ Differentiate between default, parameterized, and copy constructors  
✅ Understand constructor overloading  
✅ Apply constructors to initialize objects automatically  
✅ Recognize differences between constructor and regular member functions  

---

## 🧠 1. What Is a Constructor?

A **constructor** is a **special member function** of a class that is **automatically called** when an object is created.  
Its main purpose is to **initialize the data members** of a class.

---

## 🔍 Key Features:

- Has the **same name** as the class  
- Has **no return type** (not even `void`)  
- Can be **overloaded**  
- Called **once per object** at the time of creation  

---

## 🔧 2. Syntax of a Constructor

```cpp
class ClassName {
public:
    ClassName() {
        // constructor body
    }
};
```
## ✅ 3. Example: Default Constructor

```cpp
#include <iostream>
using namespace std;

class Student {
public:
    Student() {
        cout << "Constructor called!" << endl;
    }
};

int main() {
    Student s1; // Constructor is automatically called
    return 0;
}
```
## 📝 4. Types of Constructors

### 🔹 A. Default Constructor  
Takes **no parameters**.

```cpp
class Box {
public:
    Box() {
        cout << "Default constructor" << endl;
    }
};
```
### 🔹 B. Parameterized Constructor  
Takes **arguments** to set data at creation time.

```cpp
class Book {
private:
    string title;
public:
    Book(string t) {
        title = t;
    }
    void show() {
        cout << "Book Title: " << title << endl;
    }
};
```
### 🔹 C. Copy Constructor  
Creates a **new object as a copy** of an existing one.

```cpp
class Person {
private:
    string name;
public:
    Person(string n) { name = n; }
    Person(const Person &p) {
        name = p.name;
    }
    void show() { cout << "Name: " << name << endl; }
};
```
## 🔁 5. Constructor Overloading

Multiple constructors can exist in the same class with **different parameters**.

```cpp
class Rectangle {
private:
    int length, width;
public:
    Rectangle() {
        length = width = 0;
    }

    Rectangle(int l, int w) {
        length = l;
        width = w;
    }

    void area() {
        cout << "Area: " << length * width << endl;
    }
};
```
## 🚫 6. Constructor vs. Regular Function

| Feature     | Constructor                        | Member Function                  |
|-------------|-------------------------------------|----------------------------------|
| Name        | Same as class name                  | Any valid identifier             |
| Return Type | None                                | Must have a return type          |
| Invocation  | Automatic (on object creation)      | Manual (called explicitly)       |
| Purpose     | Initialize object                   | Define behavior                  |

---

## 🧩 7. Real-World Analogy

Constructor is like a **registration form**:  
As soon as you create an account (object),  
the form (constructor) is **auto-filled with your basic info** (initialization).

---

## ✏️ Classwork Exercises

- **Create a Car Class**  
  - Data members: `brand`, `modelYear`  
  - Use a **default constructor** to initialize values and print them.

- **Student with Parameterized Constructor**  
  - Create a class `Student` with `name` and `roll number`  
  - Use a **parameterized constructor** to initialize the object.

- **Copy Constructor Practice**  
  - Make a class `Book` with `title` and `price`  
  - Use a **copy constructor** to clone a book object.

---

## 📝 Homework Assignments

- **Product Class Constructor Overloading**  
  - Create a class `Product` with `name`, `price`  
  - Overload constructors to support:  
    - No input  
    - Name only  
    - Name and price

- **BankAccount with Constructor**  
  - Create a class with `account number` and `balance`  
  - Initialize via **parameterized constructor** and show account info.

- **Library Book Tracker**  
  - Use a **copy constructor** to duplicate a book’s details  
  - Create 2 books: original and copy

- **Student Copy Test**  
  - Create a class with `roll`, `name`, `GPA`  
  - Instantiate two objects using:  
    - Constructor with input  
    - Copy constructor from the first object

---

## 🧾 Summary Table

| Constructor Type       | Description                               |
|------------------------|-------------------------------------------|
| Default                | No parameters, sets default values        |
| Parameterized          | Takes arguments to set initial values     |
| Copy Constructor       | Initializes a new object from another object |
| Overloaded Constructors| Multiple constructors with different parameters |
