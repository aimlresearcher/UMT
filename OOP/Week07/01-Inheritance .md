# 🎓 Lecture: Inheritance in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand the concept and purpose of **inheritance** in OOP  
✅ Use correct syntax for different types of inheritance  
✅ Differentiate between **base** and **derived** classes  
✅ Understand and implement **function overriding**  
✅ Build class hierarchies to demonstrate **code reuse** and **polymorphism**

---

## 🧠 1. What Is Inheritance?

**Inheritance** is an OOP mechanism that allows one class to inherit **properties** and **behaviors** from another class.

---

### 🔍 Definition:
**Inheritance** allows the creation of a new class (**derived class**) from an existing class (**base class**), **reusing code** and enabling **polymorphism**.

---

### 💡 Real-Life Analogy:
- A **Car** is a **Vehicle**.  
- A **Dog** is an **Animal**.  
- A **SavingsAccount** is a **BankAccount**.  

Each derived object inherits properties from its **base type**.

---

## 🔧 2. Syntax and Meaning

### 🔹 Basic Syntax:

```cpp
class Base {
    // base class members
};

class Derived : accessSpecifier Base {
    // derived class members
};
```
### 🔹 Example:

```cpp
class Animal {
public:
    void eat() {
        cout << "Eating..." << endl;
    }
};

class Dog : public Animal {
public:
    void bark() {
        cout << "Barking..." << endl;
    }
};
```
```cpp
int main() {
    Dog d;
    d.eat();   // inherited from Animal
    d.bark();  // defined in Dog
}
```
### 🔹 Access Specifiers and Their Effect

| Inherited From  | public Inheritance  | protected Inheritance  | private Inheritance  |
|-----------------|---------------------|-------------------------|----------------------|
| public members  | Remain public       | Become protected        | Become private       |
| protected members | Remain protected    | Remain protected        | Become private       |
| private members | Not inherited        | Not inherited           | Not inherited        |

---

## 🔁 3. Function Overriding

Function overriding occurs when a derived class provides a **new implementation** of a function defined in its base class.

### 🔹 Rules:
- Function **names** and **parameters** must match exactly.
- Base function should be **virtual** (optional but best practice).
- Enables **runtime polymorphism** with base class pointers.

### 🔹 Example: Overriding `display()` Function

```cpp
class Animal {
public:
    virtual void sound() {
        cout << "Animal sound" << endl;
    }
};

class Dog : public Animal {
public:
    void sound() override {
        cout << "Bark!" << endl;
    }
};
```
```cpp
int main() {
    Animal* a;
    Dog d;
    a = &d;
    a->sound();  // Outputs: Bark! (due to overriding)
}
```
## 🧩 4. Examples of Inheritance

### 🔸 Example 1: Single Inheritance

```cpp
class Person {
public:
    string name;
    void introduce() {
        cout << "Hi, I am " << name << endl;
    }
};

class Student : public Person {
public:
    int rollNo;
    void show() {
        cout << "Roll No: " << rollNo << endl;
    }
};
```
### 🔸 Example 2: Multilevel Inheritance

```cpp
class Vehicle {
public:
    void start() { cout << "Starting..." << endl; }
};

class Car : public Vehicle {
public:
    void drive() { cout << "Driving..." << endl; }
};

class SportsCar : public Car {
public:
    void race() { cout << "Racing..." << endl; }
};
```
### 🔸 Example 3: Function Overriding with `virtual`

```cpp
class Shape {
public:
    virtual void draw() {
        cout << "Drawing shape" << endl;
    }
};

class Circle : public Shape {
public:
    void draw() override {
        cout << "Drawing Circle" << endl;
    }
};
```
## ✏️ Classwork Exercises

### 🔸 Create a Vehicle and Bike Class
- **Base**: `start()`, `stop()`  
- **Derived**: `wheelie()` function  

### 🔸 Employee and Manager Inheritance
- **Employee** has: `name`, `salary`  
- **Manager** adds: `bonus`  
- Use **function overriding** to show `details()`  

### 🔸 Shape Inheritance
- **Base class**: `Shape` with virtual `draw()`  
- **Derived classes**: `Rectangle`, `Triangle` override `draw()`  

---

## 📝 Homework Assignments

### 🔸 Account and SavingsAccount
- **Base class** has: `balance`, `deposit()`, and `withdraw()`  
- **Derived class** adds: `interest calculation`  
- Override `withdraw()` to include a limit  

### 🔸 Create a University → Faculty → Lecturer Hierarchy
- Include **attributes** and **functions** at each level  
- Use **multilevel inheritance**

### 🔸 Override display() Method
- Create a **base class** `Device` with virtual `display()`  
- Derived classes **Phone** and **Tablet** should override the method  

### 🔸 Bank Management System
- Classes: `Person`, `Customer`, `Employee`  
- Demonstrate **overriding** and **code reuse** using inheritance  

---

## 📌 Summary Table

| Concept            | Description                                           |
|--------------------|-------------------------------------------------------|
| Inheritance        | Derived class gets base class members                 |
| Base Class         | The class being inherited from                        |
| Derived Class      | The class that inherits                                |
| Overriding         | Redefining a function in the child class              |
| Virtual Function   | Enables polymorphism via base pointer                 |
| Access Specifiers  | Control what is inherited and accessible              |

---

## 💬 Final Thought

**Inheritance** supports **reusability**, **hierarchical classification**, and **polymorphism** — all essential pillars of OOP. Learning when and how to use it properly enables **scalable** and **maintainable** systems.
