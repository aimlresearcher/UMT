# 🎓 Lecture: Relationships Between Objects – Association in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand what **association** is in OOP  
✅ Differentiate between **association**, **aggregation**, and **composition**  
✅ Implement **association in C++** using class objects  
✅ Interpret **real-world examples** of object relationships  
✅ Recognize **unidirectional** and **bidirectional** associations  

---

## 🧠 1. What Is Association?

**Association** is a relationship where **one object uses or communicates** with another object.

---

### 🔍 Definition:

Association represents a **“has-a”** or **“uses-a”** relationship between two classes **without ownership**.

---

### 💡 Real-Life Analogy

- A **Teacher** teaches a **Student** → *association*  
- A **Driver** drives a **Car** → *association*  
- A **Doctor** treats a **Patient** → *association*  

In these relationships, neither object is a **part of** the other — they just **work together**.

---

## 🔧 2. Implementing Association in C++

### 🔹 Example: Teacher ↔ Student (Unidirectional Association)

```cpp
class Student {
public:
    string name;
    Student(string n) : name(n) {}
};

class Teacher {
public:
    string name;

    Teacher(string n) : name(n) {}

    void teach(Student s) {
        cout << name << " is teaching " << s.name << endl;
    }
};
```
```cpp
int main() {
    Student s1("Ali");
    Teacher t1("Sir Ahmed");

    t1.teach(s1);
}

```
🧠 The **teacher knows the student**, but the **student doesn't know the teacher** —  
this is a classic case of **unidirectional association**.
## 🔁 3. Bidirectional Association

### 🔹 Example: Student ↔ Course

```cpp
class Course; // forward declaration

class Student {
public:
    string name;
    Course* course;  // pointer to associated Course

    Student(string n) : name(n), course(nullptr) {}
};

class Course {
public:
    string title;
    Student* student;  // pointer to associated Student

    Course(string t) : title(t), student(nullptr) {}
};
```
🧠 Both `Student` and `Course` hold references to each other —  
this is a **bidirectional association**.

---

## 🧩 4. Types of Association

| Type         | Description                            | Example                  |
|--------------|----------------------------------------|--------------------------|
| One-to-One   | One object is associated with one      | Person ↔ Passport        |
| One-to-Many  | One object associated with many others | Teacher → Many Students  |
| Many-to-Many | Many objects associated with many      | Students ↔ Courses       |

---

## 📊 5. Association vs Aggregation vs Composition

| Feature     | Association     | Aggregation       | Composition          |
|-------------|------------------|--------------------|-----------------------|
| Ownership   | No               | Weak ownership     | Strong ownership      |
| Lifespan    | Independent      | Independent        | Dependent             |
| Type        | "uses-a"         | "has-a"            | "part-of"             |
| Example     | Doctor ↔ Patient | Library ↔ Books    | House → Rooms         |

---

## 🔐 6. Characteristics of Association

- 🔁 Can be **temporary or permanent**  
- ➰ Often modeled using **pointers or references**  
- 🔗 May include **multiple relationships**  
- 🧱 Helps promote **modular and reusable** class designs  

---

## 🛠️ 7. Practical Use Case

### 🔹 Library and Book Association (One-to-Many)

```cpp
class Book {
public:
    string title;
    Book(string t) : title(t) {}
};

class Library {
public:
    string name;

    void issueBook(Book b) {
        cout << "Issuing " << b.title << " from " << name << endl;
    }
};
```
## ✏️ Classwork Exercises

### 🔸 Driver and Car Association
- Create two classes: `Driver`, `Car`  
- `Driver` class should have a method `drive(Car c)`  
- Print driver name and car model  

### 🔸 Author and Book
- One author writes multiple books  
- Class `Author` contains a function to list book titles (passed in array or vector)  

### 🔸 Customer and Order
- Customer places an order  
- Use a function in `Customer` that accepts an `Order` object  

---

## 📝 Homework Assignments

### 🔸 Student and Laptop
- Create a class `Laptop` with `brand`  
- Associate it with a `Student` who owns a laptop  
- Print a message showing the ownership  

### 🔸 Doctor and Multiple Patients
- Doctor has a method `treat(Patient p)`  
- Loop through a list of patients to simulate multiple treatments  

### 🔸 Teacher and Multiple Courses
- Each teacher teaches multiple courses  
- Display course names being taught  

### 🔸 Model Bidirectional Relationship
- Build a `Project ↔ Employee` relationship where:  
  - Project knows its employee  
  - Employee knows their project  

---

## 🧾 Summary Table

| Concept             | Role in OOP                                   |
|---------------------|-----------------------------------------------|
| Association         | Relationship between independent classes      |
| Unidirectional      | One class knows about the other               |
| Bidirectional       | Both classes know about each other            |
| Type                | One-to-One, One-to-Many, Many-to-Many         |
| Importance          | Promotes code reuse, design clarity           |

---

## 📢 Final Thought

**Association** is the foundation of interaction between objects in object-oriented design.  
It reflects **real-world relationships**, enhances **modularity**, and enables **clean separation of responsibilities** across classes.
