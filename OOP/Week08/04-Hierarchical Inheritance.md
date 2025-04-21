# 🎓 Lecture: Hierarchical Inheritance in C++

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

✅ Understand the structure and use of **hierarchical inheritance**  
✅ Recognize real-world scenarios suitable for **hierarchical models**  
✅ Implement **hierarchical inheritance** using C++ classes  
✅ Apply **constructors**, **function overriding**, and **base class reuse**  
✅ Distinguish **hierarchical inheritance** from other types like **multilevel** and **multiple** inheritance

---

## 🧠 1. What Is Hierarchical Inheritance?

**Hierarchical inheritance** occurs when multiple derived classes inherit from a **single base class**.

---

### 💡 Real-Life Analogy:
- **Teacher**, **Student**, **Principal** all inherit from **Person**.
- **Car**, **Bike**, **Truck** inherit from **Vehicle**.
- **Dog**, **Cat**, **Horse** inherit from **Animal**.

Each derived class shares the common properties of the base class while adding its own specific features.

---

## 🔧 2. Syntax of Hierarchical Inheritance

```cpp
class Base {
    // Common properties
};

class Derived1 : public Base {
    // Inherits Base
};

class Derived2 : public Base {
    // Inherits Base
};

class Derived3 : public Base {
    // Inherits Base
};
```
## ✅ 3. Code Example – Person Hierarchy

```cpp
#include <iostream>
using namespace std;

class Person {
public:
    string name;

    void greet() {
        cout << "Hello, I am " << name << endl;
    }
};

class Student : public Person {
public:
    void study() {
        cout << "Studying..." << endl;
    }
};

class Teacher : public Person {
public:
    void teach() {
        cout << "Teaching..." << endl;
    }
};

int main() {
    Student s;
    s.name = "Ali";
    s.greet();
    s.study();

    Teacher t;
    t.name = "Sara";
    t.greet();
    t.teach();
}
```
## 🔍 Output:

```cpp
Hello, I am Ali  
Studying...  
Hello, I am Sara  
Teaching...
```
### ✅ Both Student and Teacher reused the greet() function and name property from Person.

---

## 🧬 4. Constructor Order in Hierarchical Inheritance

```cpp
class Base {
public:
    Base() {
        cout << "Base constructor\n";
    }
};

class Child1 : public Base {
public:
    Child1() {
        cout << "Child1 constructor\n";
    }
};

class Child2 : public Base {
public:
    Child2() {
        cout << "Child2 constructor\n";
    }
};
```
## 🔍 Output:

```kotlin
Base constructor  
Child1 constructor

Base constructor  
Child2 constructor
```
## 🧩 5. Visual Diagram

```pgsql
          [Base Class]
             Person
               |
    -------------------------
    |           |           |
 Student     Teacher     Principal
```
## All child classes inherit the base structure, but are independent of each other.

---

## 📊 6. Use Cases

| Scenario            | Base Class | Derived Classes                        |
|---------------------|------------|----------------------------------------|
| **Education System** | Person     | Student, Teacher, Admin                |
| **Transportation**   | Vehicle    | Car, Bike, Truck                       |
| **Media Content**    | File       | ImageFile, AudioFile, VideoFile        |
| **Hospital System**  | Staff      | Doctor, Nurse, Receptionist            |

---

## 🧾 Summary Table

| Feature              | Hierarchical Inheritance                       |
|----------------------|------------------------------------------------|
| **Base Class**        | One                                            |
| **Derived Classes**   | Two or more                                    |
| **Code Reuse**        | High                                           |
| **Coupling**          | Low between derived classes                   |
| **Inheritance Path**  | Multiple classes derive from one common class |

---

## ✏️ Classwork Exercises

### 🔸 Animal as Base
- Derived: Dog, Cat, Elephant
- All share method `eat()` from Animal

### 🔸 Shape as Base
- Derived: Circle, Rectangle, Triangle
- Use `draw()` in each derived class (override)

### 🔸 Account as Base
- Derived: SavingAccount, CheckingAccount
- Add interest or overdraft method respectively

---

## 📝 Homework Assignments

### 🔸 University Hierarchy
- **Base**: Person
- **Derived**: Student, Teacher, Staff
- Add base method `getDetails()`

### 🔸 Vehicle System
- **Base**: Vehicle
- **Derived**: Bike, Car, Truck
- Add shared `fuelType` property, specific behaviors

### 🔸 Media Library
- **Base**: File
- **Derived**: TextFile, AudioFile, VideoFile
- Override `displayProperties()` in each child

### 🔸 Create UML and Implementation
- Diagram for base **Appliance** with **Fridge**, **WashingMachine**, **Microwave** as derived
- Implement with base function and overridden derived features

---

## 💬 Final Thought

**Hierarchical inheritance** is ideal when many classes share a common base. It enables clean code reuse, logical separation, and scalability for large object systems.
