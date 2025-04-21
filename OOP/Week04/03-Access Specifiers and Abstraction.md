# 🎓 Lecture: Access Specifiers and Abstraction in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Define access specifiers: `private`, `public`, and `protected`  
✅ Understand the purpose and usage of each specifier  
✅ Relate access specifiers to abstraction and information hiding  
✅ Implement encapsulated class designs using proper access control  
✅ Practice access restriction using real-world inspired examples  

---

## 🧠 1. What Are Access Specifiers?

**Access specifiers** define the **visibility** and **accessibility** of class members (data and methods) from outside the class.

---

## 🔐 2. Types of Access Specifiers in C++

| Specifier   | Accessibility                                  |
|-------------|------------------------------------------------|
| `private`   | Accessible only within the same class          |
| `public`    | Accessible from anywhere in the program        |
| `protected` | Accessible within the class and its subclasses |

---

### 🔸 1. `private` – Hidden from Outside  
Used to **hide sensitive data** or **internal logic**.

```cpp
class Account {
private:
    float balance;  // cannot be accessed directly outside
};
```
### 🔸 2. `public` – Exposed Interface

Used to provide **safe and controlled access** to class functionality.

```cpp
class Account {
public:
    void deposit(float amount);  // interface exposed to user
};
```
### 🔸 3. `protected` – Used in Inheritance

Used when data should be **shared with child classes** but **not with outside functions**.

```cpp
class Base {
protected:
    int id;  // accessible in derived classes
};
```
## 🔄 3. Relation to Abstraction

### 💡 Core Principle:
**Abstraction** is the act of **showing only what’s necessary**, and **hiding the rest**.

### Access specifiers implement abstraction by:

- 🔒 Using `private` to hide internal details (**information hiding**)  
- 🌐 Using `public` to show essential behaviors (**interface**)  

---

## 🧱 Example: Pen Class

```cpp
class Pen {
private:
    string inkColor;     // hidden from user
    bool isCapped;       // internal state

public:
    void cap() { isCapped = true; }
    void uncap() { isCapped = false; }

    void write() {
        if (isCapped)
            cout << "Please uncap the pen!" << endl;
        else
            cout << "Writing..." << endl;
    }
};
```
## 🔍 Abstraction View:

User sees only: `cap()`, `uncap()`, and `write()`  
Details like `isCapped` and `inkColor` are **abstracted**

---

## 📊 4. Summary: Specifiers + Abstraction

| Access Specifier | Supports Abstraction by...                  |
|------------------|---------------------------------------------|
| `private`        | Hiding implementation details               |
| `public`         | Exposing only required functionality        |
| `protected`      | Sharing selected data with derived classes only |

---

## ✏️ Classwork Exercises

- **Create a Fan Class**  
  - Private: `speed`, `isOn`  
  - Public: `turnOn()`, `turnOff()`, `setSpeed()`, `status()`  
  - Demonstrate abstraction and use of private.

- **BankAccount**  
  - Keep `balance` private  
  - Provide `deposit()`, `withdraw()`, and `getBalance()` as public methods.

- **Build a Student Class**  
  - Private: `name`, `marks`  
  - Public: `setData()`, `display()`  
  - Test restricted access from outside the class.

---

## 📝 Homework Assignments

- **Create a Class MobilePhone**  
  - Private: `batteryLevel`, `isLocked`  
  - Public: `unlock()`, `lock()`, `charge()`, `showBattery()`

- **Implement a GameCharacter**  
  - Private: `health`, `strength`  
  - Public: `attack()`, `defend()`, `showStatus()`

- **Employee Class with Protected Access**  
  - Base class: `Employee` with protected `salary`  
  - Derived class: `Manager` that accesses and modifies `salary`

- **Test Access Control**  
  - Write test code that tries to directly access private members  
  - Observe and record compiler errors to understand enforcement

---

## 🧾 Summary Table

| Access Specifier | Accessible In...             | Role in Abstraction         |
|------------------|-------------------------------|-----------------------------|
| `private`        | Own class only                | Hides internal data         |
| `public`         | Anywhere                      | Exposes safe interface      |
| `protected`      | Own class + derived classes   | Enables controlled inheritance |
