# 🎓 Lecture: Multilevel Inheritance in C++
## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

✅ Understand what **multilevel inheritance** is and how it works in C++  
✅ Write and analyze **class hierarchies** with multiple levels  
✅ Recognize real-world scenarios that require **layered inheritance**  
✅ Implement **constructor/destructor chaining** across levels  
✅ Demonstrate **reuse of base class functionality** through **intermediate classes**

---

## 🧠 1. What Is Multilevel Inheritance?

**Multilevel inheritance** is when a class is derived from another **derived class**, forming a chain of inheritance.

---

### 🔍 Real-Life Analogy:

- **Great-grandfather → Grandfather → Father → Son**  
- **LivingBeing → Animal → Mammal → Dog**

Each level **inherits features** from the previous one, and the last class in the chain has access to all accumulated functionality.

---

## 🔧 2. Syntax of Multilevel Inheritance

```cpp
class A {
    // base class
};

class B : public A {
    // derived from A
};

class C : public B {
    // derived from B (indirectly from A)
};
```
## ✅ 3. Example Code – Multilevel Inheritance

```cpp
#include <iostream>
using namespace std;

class LivingBeing {
public:
    void breathe() {
        cout << "Breathing..." << endl;
    }
};

class Animal : public LivingBeing {
public:
    void move() {
        cout << "Moving..." << endl;
    }
};

class Dog : public Animal {
public:
    void bark() {
        cout << "Barking..." << endl;
    }
};

int main() {
    Dog d;
    d.breathe(); // Inherited from LivingBeing
    d.move();    // Inherited from Animal
    d.bark();    // Defined in Dog
}
```
## 🧪 Output:

```cpp
Breathing...
Moving...
Barking...
```
### 💡 This shows how the bottom-most class (Dog) can access all the inherited functionality.

---

## 🔁 4. Constructor and Destructor Order in Multilevel Inheritance

```cpp
class A {
public:
    A() { cout << "A Constructor\n"; }
    ~A() { cout << "A Destructor\n"; }
};

class B : public A {
public:
    B() { cout << "B Constructor\n"; }
    ~B() { cout << "B Destructor\n"; }
};

class C : public B {
public:
    C() { cout << "C Constructor\n"; }
    ~C() { cout << "C Destructor\n"; }
};

int main() {
    C obj;
}
```
## 🧪 Output:

```cpp
A Constructor  
B Constructor  
C Constructor  
C Destructor  
B Destructor  
A Destructor
```
## ✅ Constructors are called **top-down**, destructors are called **bottom-up**.

---

## 📚 5. Real-World Applications

| Class Hierarchy           | Real-World Example                                   |
|---------------------------|------------------------------------------------------|
| **Person → Employee → Manager** | HR systems with increasing specialization           |
| **Shape → Polygon → Triangle** | Geometric hierarchy                                |
| **Appliance → WashingMachine → SmartWasher** | Product hierarchy                               |

---

## 🧾 Summary Table

| Feature               | Multilevel Inheritance                         |
|-----------------------|------------------------------------------------|
| **Structure**          | A → B → C                                      |
| **Access**             | C can access B and A                          |
| **Reuse**              | Reuses all levels                              |
| **Application**        | Layered models, hierarchical objects           |

---

## ✏️ Classwork Exercises

### 🔸 Vehicle → Car → ElectricCar
- **Vehicle**: `start()`  
- **Car**: `drive()`  
- **ElectricCar**: `chargeBattery()`  
- Print complete inheritance chain

### 🔸 Shape → Polygon → Triangle
- Add `draw()` function at each level with **function overriding**

---

## 📝 Homework Assignments

### 🔸 Appliance → WashingMachine → SmartWasher
- Show behavior of all three classes  
- Track **constructor** and **destructor** chaining

### 🔸 LivingThing → Plant → Flower
- Demonstrate inheritance in the **natural hierarchy**

### 🔸 Book → PrintedBook → Hardcover
- Add **title**, **page count**, and **cover type**  
- Create an object and **display all details**

### 🔸 Create a UML Diagram
- Draw a UML for a 3-level inheritance chain (e.g., **Device → Mobile → Smartphone**)  
- Implement it in **C++**

---

## 💬 Final Thought

**Multilevel inheritance** allows for building **complex**, **structured systems** by stacking **specializations**. It encourages **incremental development** and supports **code reuse** at every level of the hierarchy.
