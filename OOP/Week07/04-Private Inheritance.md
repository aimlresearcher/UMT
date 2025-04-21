# 🎓 Lecture: Private Inheritance in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand the concept of **private inheritance**  
✅ Apply the **syntax** and **structure** of private inheritance in C++  
✅ Identify how **access specifiers** change in **private inheritance**  
✅ Differentiate between **public**, **protected**, and **private inheritance**  
✅ Recognize **use cases** where private inheritance is appropriate

---

## 🧠 1. What Is Private Inheritance?

In **private inheritance**, all **public** and **protected** members of the **base class** become **private** in the derived class.

---

### ❗ Important:
- It does **not model** an **“is-a” relationship**.
- It is more like **“implemented-in-terms-of”**.

---

## 🔧 2. Syntax

```cpp
class Base {
    // members
};

class Derived : private Base {
    // base members become private in Derived
};
```
## 📊 3. Access Behavior in Private Inheritance

| Base Class Member | In Derived Class | Accessible Outside Derived? |
|-------------------|------------------|-----------------------------|
| public            | private          | ❌ No                       |
| protected         | private          | ❌ No                       |
| private           | ❌ Not inherited | ❌ No                       |

---

💡 **Real-Life Analogy**  
A **Car** uses an **Engine**, but you don’t access the engine’s **internal features** directly — the car **privately inherits** from the engine.

---

## 🔍 4. Example: Base → Derived (Private Inheritance)

```cpp
class Engine {
public:
    void start() {
        cout << "Engine started." << endl;
    }
};

class Car : private Engine {
public:
    void drive() {
        start();  // Allowed inside class
        cout << "Car is driving." << endl;
    }
};

int main() {
    Car c;
    // c.start(); ❌ Error: start() is private in Car
    c.drive();     // ✅ Works
}
```
## 🧠 **start()** is inherited, but not accessible to external code.

---

## 🔁 5. Why Use Private Inheritance?

| Scenario                    | Why it Helps                                           |
|-----------------------------|-------------------------------------------------------|
| **Internal implementation reuse** | You want to use **base functionality** **internally** only |
| **Hide base interface**     | Prevent **external access** to base methods           |
| **Strong encapsulation**    | Users interact only with **derived class interface**  |

---

## 🧩 6. Public vs Protected vs Private Inheritance

| Inheritance Type | public Members | protected Members | private Members |
|------------------|-----------------|--------------------|-----------------|
| **Public**       | Public          | Protected          | Not inherited   |
| **Protected**    | Protected       | Protected          | Not inherited   |
| **Private**      | Private         | Private            | Not inherited   |

---

## 🧪 7. Use Case Example: Device → Printer

```cpp
class Device {
public:
    void initialize() {
        cout << "Device initialized." << endl;
    }
};

class Printer : private Device {
public:
    void printDocument() {
        initialize();  // Allowed internally
        cout << "Printing..." << endl;
    }
};

int main() {
    Printer p;
    // p.initialize(); ❌ Error
    p.printDocument(); // ✅ Works
}
```
## ✏️ Classwork Exercises

### 🔸 Create a Person and Passport Class
- **Person** inherits **Passport** privately.
- Access passport details **internally** via `Person::showIdentity()`.

### 🔸 Machine and Microwave
- **Base**: `Machine` with function `powerOn()`.
- **Derived**: `Microwave` uses `powerOn()` privately to start cooking.

### 🔸 Sensor and Thermometer
- Inherit **Sensor** privately.
- Use `readData()` internally only.

---

## 📝 Homework Assignments

### 🔸 LoginSystem and Database
- **LoginSystem** privately inherits **Database**.
- Use database connectivity only **within** login system.

### 🔸 BankSystem and SecureChannel
- **SecureChannel** has function `encrypt()`.
- **BankSystem** uses it privately to handle transactions.

### 🔸 Appliance and PowerSupply
- Use **private inheritance** to enable **energy-saving features** internally.

### 🔸 Create UML Diagram + Implementation
- Model a **Game engine** that uses **AudioSystem** and **InputHandler** via **private inheritance**.

---

## 🧾 Summary Table

| Concept            | Description                                  |
|--------------------|----------------------------------------------|
| Private Inheritance | “implemented-in-terms-of” not “is-a”        |
| Access to Base Members | All become **private**                   |
| Outside Access     | Not allowed                                  |
| Use Case           | **Internal reuse** without exposing interface|

---

## 📢 Final Thought

**Private inheritance** is useful when your goal is to **reuse** base class functionality but **hide its interface**. It’s not **polymorphic**, but it’s powerful for designing **secure**, **focused**, and **modular systems**.
