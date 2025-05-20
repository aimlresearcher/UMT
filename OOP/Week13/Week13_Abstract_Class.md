
# 📘 Object Oriented Programming (C++)  
## Week 13 Reading Material  
### Topic: **Abstract Classes**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Define and implement **abstract classes** in C++.
- Understand how abstract classes enforce interface design.
- Use abstract classes as base classes in class hierarchies.
- Create flexible and extensible designs using abstraction.
- Differentiate between concrete and abstract classes.

---

## 1. 🔍 What is an Abstract Class?

An **abstract class** is a class that **cannot be instantiated** and is used only as a **base class**. It contains at least one **pure virtual function**.

Abstract classes define an **interface** or **contract** that derived classes must fulfill.

---

## 2. ⚙️ Syntax

```cpp
class AbstractBase {
public:
    virtual void doSomething() = 0; // pure virtual function
};
```

This class is abstract and cannot be instantiated.

---

## 3. 🧱 Characteristics of Abstract Classes

- Can contain **data members**, **constructors**, and **implemented functions**.
- Cannot be used to create objects.
- Can have multiple pure virtual functions.
- A class that inherits from an abstract class must override all pure virtual functions to become concrete.

---

## 4. 💡 Example: Animal Hierarchy

```cpp
class Animal {
public:
    virtual void speak() = 0; // pure virtual function
};

class Dog : public Animal {
public:
    void speak() override {
        cout << "Woof!" << endl;
    }
};

class Cat : public Animal {
public:
    void speak() override {
        cout << "Meow!" << endl;
    }
};
```

### Usage:

```cpp
int main() {
    Animal* a1 = new Dog();
    Animal* a2 = new Cat();
    a1->speak();
    a2->speak();
    delete a1;
    delete a2;
}
```

---

## 5. 🧠 Why Use Abstract Classes?

- To enforce a **common interface** for related classes.
- To promote **polymorphism** and **code generalization**.
- To facilitate **design by contract** in object-oriented systems.

---

## 6. 🆚 Abstract vs Concrete Classes

| Feature                | Abstract Class         | Concrete Class         |
|------------------------|------------------------|------------------------|
| Contains pure virtual? | Yes                    | No                     |
| Can instantiate?       | No                     | Yes                    |
| Used for               | Base only              | Direct use             |
| Provides implementation | Optional               | Required               |

---

## 7. 📌 Use Cases

- Framework and library base classes
- Interface design in large systems
- Template method pattern
- Strategy and factory design patterns

---

## 8. 💻 Hands-On Walkthrough: Abstract Employee

```cpp
class Employee {
public:
    virtual void calculateSalary() = 0; // pure virtual
};

class Manager : public Employee {
public:
    void calculateSalary() override {
        cout << "Manager salary calculated." << endl;
    }
};

class Worker : public Employee {
public:
    void calculateSalary() override {
        cout << "Worker salary calculated." << endl;
    }
};
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What makes a class abstract?
2. Can an abstract class contain non-virtual functions?
3. What must a derived class do to become concrete?
4. Why can't we instantiate an abstract class?

### 💡 Exercise

Create an abstract class `Appliance` with a pure virtual function `operate()`. Implement two concrete classes `WashingMachine` and `Microwave` that override `operate()`.

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 17  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 9  
- [GeeksforGeeks – Abstract Classes](https://www.geeksforgeeks.org/abstract-classes-in-c/)

---
