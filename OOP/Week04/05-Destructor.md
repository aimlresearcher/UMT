# 🎓 Lecture: Destructor in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand what a destructor is and its purpose in C++  
✅ Identify how and when destructors are invoked  
✅ Differentiate between constructor and destructor  
✅ Apply destructors to release resources or perform cleanup operations  
✅ Use destructors in class-based programs for memory management  

---

## 🧠 1. What Is a Destructor?

A **destructor** is a **special member function** that is **automatically called** when an object is destroyed.

### Purpose:
Its primary role is to **release resources**, such as **memory** or **file handles**, that the object may have acquired during its lifetime.

---

## 🔧 Syntax of Destructor

```cpp
class ClassName {
public:
    ~ClassName() {
        // destructor body
    }
};
```
### ✅ 2. Simple Example of a Destructor

📝 Characteristics of a Destructor:

- Starts with a `~` (tilde) followed by the **class name**  
- Takes **no parameters**  
- Has **no return type**  
- **Cannot be overloaded**

---

```cpp
#include <iostream>
using namespace std;

class Student {
public:
    Student() {
        cout << "Constructor: Student object created." << endl;
    }

    ~Student() {
        cout << "Destructor: Student object destroyed." << endl;
    }
};

int main() {
    Student s1;
    cout << "Main function body." << endl;
}
```
### 🔍 Output:

```cpp
Constructor: Student object created.
Main function body.
Destructor: Student object destroyed.
```
💡 Destructor runs **automatically** when the object **goes out of scope**.

---

## 🔁 3. Constructor vs Destructor – Comparison

| Feature       | Constructor                 | Destructor                         |
|---------------|------------------------------|-------------------------------------|
| Purpose       | Initialize object            | Clean up resources                  |
| Name          | Same as class name           | Same as class name with `~`         |
| Return type   | None (implicitly)            | None                                |
| Parameters    | Can have parameters          | Cannot have parameters              |
| Overloading   | Allowed                      | Not allowed                         |
| Call          | Automatically during creation | Automatically during destruction    |

---

## 🗂️ 4. When Are Destructors Called?

- ✅ When a **local object goes out of scope**  
- 🧹 When an object is deleted using `delete` (in case of dynamic memory)  
- 🛑 At the **end of the program** for global/static objects  

---

## 🧪 5. Destructor with Dynamic Memory

```cpp
class Student {
private:
    int* grades;

public:
    Student() {
        grades = new int[5]; // allocate memory
        cout << "Memory allocated for grades.\n";
    }

    ~Student() {
        delete[] grades; // free memory
        cout << "Memory released from grades.\n";
    }
};
```
💡 **Why Important?**  
If destructors are not defined, you may get **memory leaks**.

---

## 🔐 6. Best Practices with Destructors

- ✅ Always define a destructor when using **dynamic memory allocation**  
- 📂 Use it to **close files**, release handles, free memory, etc.  
- 🔁 Pair every `new` with `delete` inside the destructor  

---

## ✏️ Classwork Exercises

- **Create a Class Book**  
  - Add a **constructor** and **destructor**  
  - Output messages from both to track object lifecycle

- **Dynamic Memory in Course**  
  - Allocate an array of grades in constructor  
  - Release it in destructor

- **File Handling in Logger**  
  - Open a file in constructor  
  - Close it in destructor

---

## 📝 Homework Assignments

- **Create a DatabaseConnection Class**  
  - Constructor opens connection (simulate)  
  - Destructor closes it (print a message)

- **Employee Record System**  
  - Use `new` to create an array of employee salaries  
  - Free it in the destructor

- **Constructor/Destructor Tracker**  
  - Create a class `Tracker` with constructor/destructor  
  - Create multiple objects in different scopes  
  - Print messages to show when destruction occurs

---

## 📌 Summary Table

| Concept       | Description                           |
|----------------|----------------------------------------|
| Destructor    | Auto-executed function for cleanup     |
| Symbol        | `~` followed by class name             |
| Return Type   | None                                   |
| Parameters    | Not allowed                            |
| Use Case      | Memory, file, or resource cleanup      |
| Auto-call     | When object is destroyed               |
