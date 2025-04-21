# 🎓 Lecture: Class vs Object in C++

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

✅ Define and differentiate between a class and an object  
✅ Understand how classes act as blueprints, and objects as real-world instances  
✅ Write simple class-based C++ programs using objects  
✅ Visualize memory and structure differences between class definitions and object instantiation  

---

## 🧠 1. What Is a Class?

A **class** is a **user-defined data type** that acts as a **blueprint for creating objects**.

It defines:

- 📌 **Attributes** (also called **data members**)  
- 🛠️ **Behaviors** (also called **member functions** or **methods**)

---

## 📦 Example (Real-Life Analogy)

| Class           | Object                  |
|------------------|--------------------------|
| Car design       | A real Toyota Corolla    |
| Student record   | "Ali", Roll No. 12       |

---

## 🔧 Syntax of a Class

```cpp
class ClassName {
private:
    // data members
public:
    // member functions
};
```
## ✅ Example: Class Definition

```cpp
class Student {
public:
    string name;
    int rollNo;

    void displayInfo() {
        cout << "Name: " << name << ", Roll No: " << rollNo << endl;
    }
};
```
## 🧍 2. What Is an Object?

An **object** is an **instance of a class**.  
When you create an object, **memory is allocated** for its data members.

---

## 🧪 Creating Objects

```cpp
int main() {
    Student s1;  // s1 is an object of Student class
    s1.name = "Ayesha";
    s1.rollNo = 101;
    s1.displayInfo();
}
```
## 🔍 3. Class vs Object – Comparison Table

| Feature     | Class                    | Object                          |
|-------------|---------------------------|----------------------------------|
| Definition  | Blueprint/template        | Real-world entity (instance)     |
| Memory      | No memory allocated       | Memory allocated on creation     |
| Purpose     | To define structure/behavior | To use structure and behavior |
| Declaration | `class Car {}`            | `Car myCar;`                     |
| Contains    | Variables and methods (logic) | Real data and method usage   |

---

## 📚 4. Multiple Objects from One Class

```cpp
Student s1, s2;

s1.name = "Ali";    s1.rollNo = 11;
s2.name = "Sara";   s2.rollNo = 12;

s1.displayInfo();
s2.displayInfo();
```
💡 Each object has its own **copy of data members**.

---

## 📦 5. Real-World Class/Object Examples

| Class        | Possible Objects                     |
|--------------|---------------------------------------|
| Car          | car1, car2, car3                      |
| BankAccount  | account1, account2                    |
| Book         | "C++ Basics", "Math 101"              |
| Employee     | employee1, employee2                  |

---

## ✏️ Classwork Exercises

- **Create a Class Book**  
  - Members: `title`, `author`  
  - Function: `displayInfo()`  
  - Create **2 objects** and print their details.

- **Laptop Class**  
  - Members: `brand`, `ram`, `price`  
  - Create object `l1` with some values and display them.

- **Circle Class**  
  - Members: `radius`  
  - Method: `calculateArea()`

---

## 📝 Homework Assignments

- **Movie Class**  
  - Data: `name`, `duration`, `rating`  
  - Function: `displayDetails()`  
  - Create and test with at least **2 objects**.

- **MobilePhone Class**  
  - Members: `model`, `batteryPercent`  
  - Method: `charge()`, `usePhone()`  
  - Implement behavior change with each method.

- **Create a Class Teacher**  
  - Data: `name`, `subject`, `experience`  
  - Create **3 teacher objects** and display their information.

---

## 🧩 Visual Representation

```cpp
class Student {
    string name;
    int rollNo;
};

// Object Representations:
Object s1 --> name = "Ali", rollNo = 12  
Object s2 --> name = "Zara", rollNo = 13
```
Each object holds its own **data**, even though the **logic is shared** via the class.

---

## 🧾 Summary Table

| Term           | Role in OOP                                     |
|----------------|--------------------------------------------------|
| Class          | Defines structure (what data/functions exist)   |
| Object         | Instantiates class; holds actual data           |
| Encapsulation  | Combines data + behavior into one unit          |
| Reusability    | One class → many objects                        |
