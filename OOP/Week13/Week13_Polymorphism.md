
# 📘 Object Oriented Programming (C++)  
## Week 13 Reading Material  
### Topic: **Polymorphism in C++**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept of **polymorphism** in object-oriented programming.
- Differentiate between **compile-time** and **runtime polymorphism**.
- Implement **function overloading**, **operator overloading**, and **virtual functions**.
- Apply polymorphism in class hierarchies using base class pointers.
- Design extensible and modular applications using polymorphic behavior.

---

## 1. 🔍 What is Polymorphism?

**Polymorphism** means **"many forms"**. In C++, polymorphism allows objects to behave differently based on their type, even when accessed through the same interface.

---

## 2. 🧩 Types of Polymorphism

### 1. Compile-time Polymorphism (Static Binding)
- Achieved using **function overloading** and **operator overloading**.
- Function call is resolved **at compile time**.

### 2. Runtime Polymorphism (Dynamic Binding)
- Achieved using **virtual functions** and **inheritance**.
- Function call is resolved **at runtime** using base class pointers or references.

---

## 3. ⚙️ Compile-time Polymorphism Example

### Function Overloading:

```cpp
class Print {
public:
    void display(int i) {
        cout << "Integer: " << i << endl;
    }

    void display(double d) {
        cout << "Double: " << d << endl;
    }
};
```

---

## 4. 🧠 Runtime Polymorphism Example

```cpp
class Animal {
public:
    virtual void speak() {
        cout << "Animal speaks" << endl;
    }
};

class Dog : public Animal {
public:
    void speak() override {
        cout << "Dog barks" << endl;
    }
};

int main() {
    Animal* a = new Dog();
    a->speak();  // Calls Dog::speak due to virtual function
    delete a;
}
```

---

## 5. 🔄 Virtual Functions and Polymorphism

Virtual functions are the **key mechanism** behind runtime polymorphism. They allow a function to behave differently based on the actual object type, not just the pointer or reference type.

---

## 6. 🆚 Static vs Dynamic Polymorphism

| Feature                 | Compile-time Polymorphism | Runtime Polymorphism       |
|-------------------------|----------------------------|-----------------------------|
| Binding time            | Compile time               | Runtime                     |
| Techniques              | Overloading, Templates     | Virtual functions, Inheritance |
| Performance             | Faster                     | Slight overhead             |
| Flexibility             | Less flexible              | More flexible               |

---

## 7. 📌 Use Cases

- Abstracting multiple derived classes under a single interface.
- Designing plugin-based or extensible systems.
- Implementing game object behaviors, UI widgets, etc.

---

## 8. 💻 Hands-On Walkthrough: Employee System

```cpp
class Employee {
public:
    virtual void work() {
        cout << "Employee working..." << endl;
    }
};

class Manager : public Employee {
public:
    void work() override {
        cout << "Manager planning..." << endl;
    }
};

class Developer : public Employee {
public:
    void work() override {
        cout << "Developer coding..." << endl;
    }
};

int main() {
    Employee* e1 = new Manager();
    Employee* e2 = new Developer();
    e1->work();
    e2->work();
    delete e1;
    delete e2;
}
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is polymorphism in C++?
2. How is runtime polymorphism implemented?
3. What is the key difference between compile-time and runtime polymorphism?
4. Give an example of function overloading.

### 💡 Exercise

Create a class `Shape` with a virtual function `area()`. Derive `Rectangle` and `Circle` from it, override `area()` in both classes, and call them through base class pointers.

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapters 11, 16, 17  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapters 7–9  
- [GeeksforGeeks – Polymorphism in C++](https://www.geeksforgeeks.org/polymorphism-in-c/)

---
