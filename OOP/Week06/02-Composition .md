# 🎓 Lecture: Composition in C++

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

✅ Define **composition** and explain its role in OOP  
✅ Differentiate **composition** from **aggregation** and **association**  
✅ Implement **composition** using class objects as member variables (not pointers)  
✅ Understand **object lifetime management** in composition  
✅ Build **tightly coupled** models that reflect **strong ownership**

---

## 🧠 1. What Is Composition?

**Composition** is a type of association that models a **“part-of”** or **“contains-a”** relationship with **strong ownership**.

---

### 🔍 Definition:
In **composition**, one class **contains** another class as a **data member**, and the contained object is **destroyed** when the container is destroyed.

---

### 💡 Real-Life Analogy:
- A **House** has **Rooms** → when the house is destroyed, rooms are too.  
- A **Person** has a **Heart** → if the person ceases to exist, the heart does too.  
- A **Car** contains **Engine** → the engine is part of the car.

---

## 🔄 2. Comparison Summary

| Relationship  | Type      | Ownership   | Lifespan Dependency |
|---------------|-----------|-------------|---------------------|
| Association  | "uses-a"  | None        | Independent         |
| Aggregation  | "has-a"   | Weak        | Independent         |
| Composition  | "part-of" | Strong      | Dependent           |

---

## 🔧 3. How to Implement Composition in C++

In **composition**:

- The contained class is declared as a **member variable**, not a pointer.
- The object is created and destroyed with the parent **automatically**.

---

### 🔹 Example: Person and Heart

```cpp
class Heart {
public:
    Heart() {
        cout << "Heart created." << endl;
    }
    void beat() {
        cout << "Heart is beating..." << endl;
    }
    ~Heart() {
        cout << "Heart destroyed." << endl;
    }
};

class Person {
private:
    Heart heart;  // Composition: part of Person

public:
    Person() {
        cout << "Person created." << endl;
    }

    void live() {
        heart.beat();  // Accessing composed object
    }

    ~Person() {
        cout << "Person destroyed." << endl;
    }
};

int main() {
    Person p;
    p.live();
}
```
## 🔍 Output:

```cpp
Heart created.
Person created.
Heart is beating...
Person destroyed.
Heart destroyed.
```
💡 The **Heart** is automatically created and destroyed with the **Person**.

---

## 🧩 4. Key Characteristics of Composition

| Feature            | Composition                                      |
|--------------------|--------------------------------------------------|
| Lifetime dependency| Composed objects destroyed with parent           |
| Memory allocation  | Automatic (no pointers needed)                   |
| Tight coupling     | Yes                                              |
| Object creation    | Member is constructed with the parent            |
| Object destruction | Happens in destructor of parent                  |

---

## 🔁 5. Composition vs Aggregation – Code Perspective

### 🔸 Aggregation (Pointer):

```cpp
class Engine {};
class Car {
    Engine* e; // Aggregation
};
```
### 🔸 Composition (Object):

```cpp
class Engine {};
class Car {
    Engine e;  // Composition
};
```
## 📚 6. Real-World Composition Examples

| Container Class | Composed Part Class |
|-----------------|----------------------|
| Car             | Engine, Wheel, Seat  |
| Computer        | CPU, RAM, HardDisk   |
| Book            | Chapter, Page        |
| Building        | Room, Elevator       |

---

## 🧪 7. Practical Example: Book and Chapter

```cpp
class Chapter {
public:
    Chapter() {
        cout << "Chapter created." << endl;
    }
    ~Chapter() {
        cout << "Chapter destroyed." << endl;
    }
};

class Book {
private:
    Chapter ch;  // Composition

public:
    Book() {
        cout << "Book created." << endl;
    }
    ~Book() {
        cout << "Book destroyed." << endl;
    }
};
```
## ✏️ Classwork Exercises

### 🔸 Car Class with Composition
- Contain **Engine**, **Tire**, and **Battery** objects  
- Demonstrate lifecycle of each  

### 🔸 Computer Composition
- Include **CPU** and **RAM** as class members  
- Call methods from composed classes  

### 🔸 Library Contains Books
- Each book is a **direct part of Library**  
- Show **constructor** and **destructor** call order  

---

## 📝 Homework Assignments

### 🔸 MobilePhone and Battery
- Use **composition** to tightly couple **battery** to phone  
- Battery should be **initialized automatically**  

### 🔸 StudentProfile Contains Address
- **Address** should be part of the **student object**  
- Automatically created and destroyed  

### 🔸 Building and Room Class
- Model a **composition** relationship  
- Print **construction** and **destruction** flow  

### 🔸 Custom UML + Code
- Draw **UML** of a composed system (e.g., **Game** contains **Player**, **Weapon**)  
- Implement using **classes** and proper **constructors/destructors**

---

## 🧾 Summary Table

| Feature         | Description                                       |
|-----------------|---------------------------------------------------|
| Composition     | Strong "**part-of**" relationship                 |
| Memory          | Allocated and deallocated with parent             |
| Access          | Member objects accessed directly                  |
| Coupling        | Tightly coupled                                   |
| Syntax          | Member object, not pointer                        |

---

## 💬 Final Thought

**Composition** is ideal when you want **strong ownership**, **lifecycle control**, and **tight integration** of parts within an object. It is a cornerstone of good OOP design, ensuring **clear structure** and **safe memory management**.
