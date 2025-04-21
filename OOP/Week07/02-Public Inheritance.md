# 🎓 Lecture Segment: Public Inheritance in C++

## 🎯 Learning Objectives

By the end of this segment, students will be able to:

✅ Understand the **purpose** and use of **public inheritance**  
✅ Implement **public inheritance** correctly using **C++ syntax**  
✅ Know how **access specifiers** behave in **public inheritance**  
✅ Practice designing **base** and **derived** classes using **public relationships**

---

## 🧠 1. What Is Public Inheritance?

**Public inheritance** is the most common form of inheritance in C++.

It represents an **“is-a”** relationship — the derived class is a **type of** the base class.

---

### 🔹 Syntax:

```cpp
class Base {
    // members
};

class Derived : public Base {
    // inherits public and protected members as they are
};
```
💡 Real-Life Analogy:  
- A **Dog** is an **Animal**.  
- A **Car** is a **Vehicle**.  
- A **Rectangle** is a **Shape**.  

Each derived type behaves as an **instance** of the base type.

---

## 📊 2. Access Specifier Impact in Public Inheritance

| Base Member  | Becomes in Derived | Description                                |
|--------------|--------------------|--------------------------------------------|
| public       | public             | Accessible from outside                   |
| protected    | protected          | Accessible in derived class only          |
| private      | ❌ Not Inherited   | Not accessible in derived class           |

---

## 🔍 Example:

```cpp
class Person {
public:
    string name;
    void greet() {
        cout << "Hello, I'm " << name << endl;
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
    s.rollNo = 123;
    s.greet();   // Inherited
    s.show();    // Own method
}
```
## ✅ **name** and **greet()** remain **public** in the **Student** class because of **public inheritance**.

---

## 🔁 3. Why Use Public Inheritance?

- Promotes **reusability** of existing code.  
- Supports **polymorphism** through **base class pointers**.  
- Models a true **subtype** — **"is-a"** relationships.

---

### 🔸 Example: Using Polymorphism with Public Inheritance

```cpp
class Animal {
public:
    virtual void sound() {
        cout << "Some generic sound" << endl;
    }
};

class Cat : public Animal {
public:
    void sound() override {
        cout << "Meow!" << endl;
    }
};

void makeSound(Animal* a) {
    a->sound();
}

int main() {
    Cat c;
    makeSound(&c); // Output: Meow!
}
```
## 🧪 4. Summary Comparison with Other Modes

| Mode         | public members    | protected members   | private members     |
|--------------|-------------------|----------------------|---------------------|
| public       | public            | protected            | not inherited       |
| protected    | protected         | protected            | not inherited       |
| private      | private           | private              | not inherited       |

---

## ✏️ Classwork Exercises

### 🔸 Class Vehicle and Car
- **Base class Vehicle**: public member `startEngine()`  
- **Derived class Car**: public method `playRadio()`  
- Create a **Car** object and call both methods  

### 🔸 Shape → Circle
- **Base** `Shape`: method `area()` (virtual)  
- **Derived** `Circle`: override `area()` with specific logic  

### 🔸 Employee and Manager
- **Employee** has: `name` and `salary`  
- **Manager** adds: `bonus` and `calculateTotalPay()`  

---

## 📝 Homework Assignments

### 🔸 Device and Smartphone
- **Device**: `powerOn()`, `powerOff()`  
- **Smartphone**: `add takePicture()`  
- Use **public inheritance** and call all methods from a **Smartphone** object  

### 🔸 Animal → Bird
- Create virtual `speak()` function in **Animal**  
- Override it in **Bird** to say "**Tweet!**"  

### 🔸 Inheritance Hierarchy
- **University** (base): method `location()`  
- **Department** (derived): method `coursesOffered()`  
- Call both methods from **Department** object  

---

## 🧾 Summary Table

| Feature                         | Public Inheritance        |
|----------------------------------|---------------------------|
| **"is-a" Relationship**         | Yes                       |
| **Code Reuse**                  | High                      |
| **Access to base public**       | Inherited as public       |
| **Access to base protected**    | Inherited as protected    |
| **Access to base private**      | Not inherited             |

---

## 📢 Final Thought

**Public inheritance** is the cornerstone of **object-oriented design** in C++.  
It enables **hierarchical relationships**, **clean code reuse**, and is a key enabler for **runtime polymorphism**.
