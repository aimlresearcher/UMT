
# 📘 Object Oriented Programming (C++)  
## Week 13 Reading Material  
### Topic: **Virtual Functions**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept and purpose of **virtual functions**.
- Implement virtual functions and achieve **runtime polymorphism**.
- Differentiate between regular, virtual, and pure virtual functions.
- Apply the concept of **dynamic dispatch** in class hierarchies.
- Design extensible systems using base class pointers and virtual methods.

---

## 1. 🔍 What is a Virtual Function?

A **virtual function** is a member function in a base class that you expect to override in derived classes. It enables **dynamic dispatch** — allowing the correct function to be called based on the type of the object that is being pointed to, not the type of the pointer.

---

## 2. ⚙️ Basic Syntax

```cpp
class Base {
public:
    virtual void show() {
        cout << "Base class show()" << endl;
    }
};

class Derived : public Base {
public:
    void show() override {
        cout << "Derived class show()" << endl;
    }
};
```

---

## 3. 🧠 Runtime Polymorphism

Virtual functions allow **runtime decision-making** for function calls:

```cpp
Base* ptr;
Derived d;
ptr = &d;
ptr->show(); // Calls Derived::show() due to virtual function
```

Without `virtual`, it would call `Base::show()` even if `ptr` points to a `Derived` object.

---

## 4. 🔁 Virtual vs Non-Virtual Functions

| Feature                 | Virtual Function       | Non-Virtual Function      |
|-------------------------|------------------------|---------------------------|
| Binding time            | Runtime (dynamic)      | Compile-time (static)     |
| Used for                | Polymorphism           | Simpler behavior          |
| Overridable             | Yes                    | Hidden unless re-declared |
| Requires `virtual`      | Yes                    | No                        |

---

## 5. 📌 Use Cases

- Interfaces and abstract behavior definitions
- Implementing polymorphic containers
- Designing base classes for plugin systems or frameworks

---

## 6. ⛔ Virtual Function Rules

- Virtual functions can be **overridden** in derived classes.
- Must be **declared in base class** using `virtual` keyword.
- Use `override` in derived classes for **clarity and safety**.
- Constructors **cannot** be virtual.
- Destructors **should** be virtual in base classes to prevent memory leaks.

---

## 7. 🧱 Abstract Classes and Pure Virtual Functions

A **pure virtual function** has no implementation in the base class:

```cpp
class Shape {
public:
    virtual void draw() = 0; // pure virtual
};
```

Any class with one or more pure virtual functions is called an **abstract class** and **cannot be instantiated**.

---

## 8. 💻 Hands-On Walkthrough: Shape Hierarchy

```cpp
class Shape {
public:
    virtual void draw() = 0; // pure virtual
};

class Circle : public Shape {
public:
    void draw() override {
        cout << "Drawing Circle" << endl;
    }
};

class Square : public Shape {
public:
    void draw() override {
        cout << "Drawing Square" << endl;
    }
};

int main() {
    Shape* s1 = new Circle();
    Shape* s2 = new Square();
    s1->draw(); // Drawing Circle
    s2->draw(); // Drawing Square
    delete s1;
    delete s2;
}
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is the purpose of a virtual function?
2. How is runtime polymorphism achieved in C++?
3. What happens if the base class destructor is not virtual?
4. Can a class with a pure virtual function be instantiated?

### 💡 Exercise

Create an abstract class `Account` with a pure virtual function `calculateInterest()`. Derive two classes `Savings` and `Current` from it and override `calculateInterest()` for each.

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 16  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 9  
- [GeeksforGeeks – Virtual Functions](https://www.geeksforgeeks.org/virtual-function-cpp/)

---
