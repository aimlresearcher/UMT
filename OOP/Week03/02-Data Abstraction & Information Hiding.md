# 🎓 Lecture: Data Abstraction & Information Hiding in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand the concepts of data abstraction and information hiding  
✅ Differentiate between the two and explain their importance in OOP  
✅ Apply these principles using C++ class-based examples  
✅ Build classes that expose only necessary behavior and keep internal data safe  

---

## 🧠 1. What Is Data Abstraction?

**Data abstraction** is the OOP principle where only **essential details** of an object are shown,  
and **unnecessary details are hidden**.

You work with a **simplified interface** rather than the underlying complexity.

---

## 🧱 Example (Non-code Analogy)

📱 You use a smartphone to make a call.  
You don’t care about how **signal processing** or **networking** works —  
that's **abstraction** in action.

---

## 🔐 2. What Is Information Hiding?

**Information hiding** is the process of **protecting internal object data**  
from unauthorized access or modification.

### This is achieved using:
- `private` access modifier: hides data  
- `public` methods: controlled access  

---

## 🔍 Difference Between the Two

| Concept             | Description                    |
|---------------------|--------------------------------|
| Data Abstraction    | Hides complexity               |
| Information Hiding  | Hides implementation/data details |

🧠 They work together to build **secure** and **usable** classes.

---

## 🧪 3. Example 1: Student Class (Abstraction + Hiding)

```cpp
#include <iostream>
using namespace std;

class Student {
private:
    string name;
    int rollNo;
    float GPA;

public:
    void setData(string n, int r, float g) {
        name = n;
        rollNo = r;
        GPA = g;
    }

    void displayInfo() {
        cout << "Name: " << name << ", Roll No: " << rollNo << ", GPA: " << GPA << endl;
    }
};

int main() {
    Student s1;
    s1.setData("Ali", 101, 3.8);
    s1.displayInfo();
    return 0;
}
```
## 🧩 Key Concepts:

- `name`, `rollNo`, and `GPA` are **hidden** → *information hiding*  
- `setData()` and `displayInfo()` provide **abstraction** —  
  users don’t need to know how data is stored internally

---

## ✍️ 4. Example 2: Pen Class

```cpp
class Pen {
private:
    string color;
    bool isCapped;

public:
    void cap() { isCapped = true; }
    void uncap() { isCapped = false; }

    void write() {
        if (isCapped)
            cout << "Uncap the pen first!" << endl;
        else
            cout << "Writing..." << endl;
    }

    void setColor(string c) { color = c; }
    void showColor() { cout << "Pen color: " << color << endl; }
};
```
## 🧩 Key Takeaways:

- Users **can’t directly change** `isCapped` or `color` — data is **hidden**  
- They interact through **clean, simple methods** — interface is **abstracted**

---

## 🔐 5. Why Are These Important?

| Feature        | Benefit                                 |
|----------------|------------------------------------------|
| Security       | Prevents accidental changes              |
| Simplification | Cleaner and easier-to-use interface      |
| Flexibility    | Implementation can change, interface stays the same |
| Error Reduction| Limits what other parts of the program can do |

---

## ✏️ Classwork Exercises

- **Create a Book Class**  
  - Private: `title`, `author`, `price`  
  - Public: `setData()`, `displayInfo()`

- **Create a BankAccount Class**  
  - Hide the `balance`  
  - Allow `deposit()` and `withdraw()` through methods only

- **Design a Fan Class**  
  - Private: `speed`, `isOn`  
  - Public methods: `turnOn()`, `turnOff()`, `setSpeed()`, `status()`

---

## 📝 Homework Assignments

- **Vehicle Class**  
  - Attributes: `model`, `year`, `fuelLevel` (all private)  
  - Methods: `startEngine()`, `refuel()`, `showStatus()`

- **MobilePhone Class**  
  - Hide internal `battery level`  
  - Public methods: `charge()`, `makeCall()`, `checkBattery()`

- **Laptop Class**  
  - Attributes: `brand`, `RAM`, `isPoweredOn`  
  - Use constructor and public methods to manage power and show system info

---

## 📌 Summary Table

| Concept              | Description                                    |
|-----------------------|------------------------------------------------|
| Data Abstraction      | Show only necessary details via interfaces     |
| Information Hiding    | Protect internal data using private access     |
| Class                 | Encapsulates data and behavior                 |
| Access Modifiers      | `private`, `public`, `protected`              |
| Interface             | Public methods used by other classes or users |

