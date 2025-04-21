# 🎓 Lecture: Protected Inheritance in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand the concept of **protected inheritance**  
✅ Apply proper **syntax** and structure  
✅ Know how **access modifiers** behave in **protected inheritance**  
✅ Differentiate between **public**, **protected**, and **private inheritance**  
✅ Implement **protected inheritance** in **controlled reuse situations**

---

## 🧠 1. What Is Protected Inheritance?

In **protected inheritance**, **public** and **protected** members of the **base class** become **protected** in the derived class.

This means the derived class can use them internally, but they’re **not accessible** to objects of the derived class from outside.

---

## 🔧 2. Syntax

```cpp
class Base {
    // members
};

class Derived : protected Base {
    // Base's public and protected members become protected here
};
```
## 📊 3. Access Modifier Behavior in Protected Inheritance

| Base Class Member | Access in Derived Class | Accessible Outside the Class? |
|-------------------|-------------------------|--------------------------------|
| public            | protected               | ❌ No                          |
| protected         | protected               | ❌ No                          |
| private           | ❌ Not Inherited        | ❌ No                          |

---

💡 **Real-Life Analogy**  
Think of a **Department** class that inherits from **University**.  
Internal university details (like department codes) are usable **inside the Department class**, but **not visible** to students using a Department object.

---

## 🔍 4. Example: Protected Inheritance

```cpp
class University {
protected:
    string name = "COMSATS";

public:
    void printUniName() {
        cout << "University: " << name << endl;
    }
};

class Department : protected University {
public:
    void showDept() {
        cout << "Accessing inside derived: ";
        printUniName(); // Allowed
    }
};

int main() {
    Department d;
    // d.printUniName(); ❌ Error: Not accessible
    d.showDept();       // ✅ Allowed
}
```
💡 **printUniName()** is now **protected** in `Department` and can only be accessed **from within the class**.

---

## 🔁 5. When to Use Protected Inheritance?

| Scenario                | Explanation                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| **Controlled reuse**     | You want the derived class to reuse members but **not expose them to outside code**. |
| **Intermediate class design** | Used as a **helper** or **intermediate base**.                           |
| **Part of a class hierarchy** | Used when inheritance is for **code reuse only**, not for an **"is-a" relationship**. |

---

## 🧩 6. Protected vs Public Inheritance

| Feature               | Public Inheritance             | Protected Inheritance            |
|-----------------------|---------------------------------|----------------------------------|
| Public →              | Remains public                 | Becomes protected                |
| Protected →           | Remains protected              | Remains protected                |
| Outside accessibility | Yes                             | No                               |
| Use case              | **"is-a"** relationships        | **"implemented using"** internally|

---

## 🧪 7. Another Example: Employee → Payroll

```cpp
class Employee {
protected:
    string name;
    int id;

public:
    void setDetails(string n, int i) {
        name = n;
        id = i;
    }
};

class Payroll : protected Employee {
public:
    void generateSlip() {
        cout << "Payroll for: " << name << " [ID: " << id << "]\n";
    }
};
```
```cpp
int main() {
    Payroll p;
    // p.setDetails("Ali", 101); ❌ Not allowed outside
    p.generateSlip(); // ✅ Works through internal access
}
```
## ✏️ Classwork Exercises

### 🔸 University and Department
- **Base**: `University` with protected `name`  
- **Derived**: `Department` shows `name` in `show()`  
- Attempt accessing `name` **outside class**

### 🔸 Base Shape and Triangle
- **Shape** has protected **sides**  
- **Triangle** class prints sides using method

### 🔸 Employee and HR System
- **Employee** base class with `name`, `id`  
- **HRSystem** derived class processes data using internal logic

---

## 📝 Homework Assignments

### 🔸 Protected Book Inheritance
- **Base**: `Book` with `title`, `author`  
- **Derived**: `LibraryBook` (protected) prints book info internally

### 🔸 Classroom and Student
- **Base class**: `Student` with `marks`  
- **Derived**: `Classroom` calculates average (marks are not visible externally)

### 🔸 Company and Department
- **Company** has company code and policy  
- **Department** inherits it via protected mode

---

## 🧾 Summary Table

| Inheritance Type  | Public →  | Protected → | Access Outside Object |
|-------------------|-----------|-------------|-----------------------|
| **public**        | public    | protected   | ✅ Yes                |
| **protected**     | protected | protected   | ❌ No                 |
| **private**       | ❌        | ❌          | ❌ No                 |

---

## 📢 Final Thought

**Protected inheritance** offers the best of both worlds — **code reuse** without exposing **internal logic** to external use. It’s ideal for designing **flexible** yet **secure** class hierarchies.
