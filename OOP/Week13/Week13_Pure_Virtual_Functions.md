
# 📘 Object Oriented Programming (C++)  
## Week 13 Reading Material  
### Topic: **Pure Virtual Functions and Abstract Classes**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Define and use **pure virtual functions** in C++.
- Create and apply **abstract classes**.
- Understand the role of abstract classes in class hierarchies.
- Implement interfaces using pure virtual methods.
- Apply polymorphism with abstract classes.

---

## 1. 🔍 What is a Pure Virtual Function?

A **pure virtual function** is a virtual function that is set to zero (`= 0`) in the base class and has **no implementation** there. It forces derived classes to **override** the function, making the base class **abstract**.

---

## 2. ⚙️ Syntax

```cpp
class ClassName {
public:
    virtual return_type function_name(parameters) = 0;
};
```

This tells the compiler that this function **must be overridden** in any non-abstract derived class.

---

## 3. 🧱 Abstract Classes

Any class that contains at least one pure virtual function is called an **abstract class**.

- **Cannot be instantiated**
- Serves as a **base class only**
- Provides a **template/interface** for derived classes

---

## 4. 🔁 Example: Shape Interface

```cpp
class Shape {
public:
    virtual void draw() = 0; // pure virtual function
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
```

### Usage:

```cpp
int main() {
    Shape* s1 = new Circle();
    Shape* s2 = new Square();
    s1->draw();
    s2->draw();
    delete s1;
    delete s2;
}
```

---

## 5. 🧠 Why Use Pure Virtual Functions?

- To define **interfaces** in C++.
- To ensure that **specific methods** are implemented in all derived classes.
- To support **polymorphic behavior** with a uniform interface.

---

## 6. 🆚 Virtual vs Pure Virtual

| Feature             | Virtual Function         | Pure Virtual Function       |
|---------------------|--------------------------|-----------------------------|
| Implementation      | Optional in base class   | Not provided in base class  |
| Must override       | No                       | Yes                         |
| Abstract class req. | No                       | Yes                         |
| Instantiation       | Possible                 | Not possible                |

---

## 7. ⚠️ Rules and Notes

- You **cannot instantiate** an abstract class.
- A derived class must **override all** pure virtual functions to become concrete.
- Abstract classes can have **constructors and data members**.
- A class can be abstract even if it inherits pure virtual functions and doesn’t override them.

---

## 8. 💻 Hands-On Walkthrough: Payment System

```cpp
class PaymentMethod {
public:
    virtual void pay(float amount) = 0; // pure virtual
};

class CreditCard : public PaymentMethod {
public:
    void pay(float amount) override {
        cout << "Paid $" << amount << " using Credit Card" << endl;
    }
};

class PayPal : public PaymentMethod {
public:
    void pay(float amount) override {
        cout << "Paid $" << amount << " using PayPal" << endl;
    }
};
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is a pure virtual function?
2. Can abstract classes be instantiated?
3. What happens if a derived class doesn't override a pure virtual function?
4. Can abstract classes have constructors?

### 💡 Exercise

Create an abstract class `Employee` with a pure virtual function `calculateSalary()`. Derive two classes `Manager` and `Worker` that implement `calculateSalary()` differently.

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 17  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 9  
- [GeeksforGeeks – Pure Virtual Functions](https://www.geeksforgeeks.org/pure-virtual-functions-and-abstract-classes/)

---
