# 🎓 Lecture: Aggregation in C++

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

✅ Understand what **aggregation** is and how it differs from **association** and **composition**  
✅ Implement **aggregation** in C++ using classes  
✅ Identify **“has-a”** relationships in real-world scenarios  
✅ Recognize when to use aggregation for **loosely coupled components**  
✅ Practice class-based designs that reflect **modularity** and **reuse**

---

## 🧠 1. What Is Aggregation?

**Aggregation** is a special type of **association** where one class is related to another by **ownership**, but without **strong lifecycle dependency**.

---

### 🔍 Definition:
Aggregation represents a **“has-a”** relationship where one class **contains or owns** another class, but the contained object can **exist independently**.

---

### 💡 Real-Life Analogy:
- A **Department** has **Professors**, but **professors can exist without the department**.  
- A **Library** has **Books**, but **books are not destroyed if the library is closed**.  
- A **School** has **Students**, but **students can transfer or exist independently**.

---

## 🔧 2. How Is Aggregation Implemented?

In C++, aggregation is implemented by using **pointers or references** to objects of other classes as data members, not by **direct composition**.

---

### 🔹 Example: Department and Professor

```cpp
class Professor {
public:
    string name;
    Professor(string n) : name(n) {}
};

class Department {
private:
    Professor* prof;  // Aggregation: reference, not ownership

public:
    Department(Professor* p) {
        prof = p;
    }

    void display() {
        cout << "Department has Professor: " << prof->name << endl;
    }
};

int main() {
    Professor p1("Dr. Ahmed");
    Department d1(&p1);  // Professor exists independently
    d1.display();
}
```
## 🔁 3. Aggregation vs Composition vs Association

| Feature             | Association        | Aggregation          | Composition            |
|---------------------|--------------------|----------------------|------------------------|
| Relationship Type   | Uses-a             | Has-a                | Part-of                |
| Lifespan Dependency | No                 | Independent lifespans| Contained object's lifetime ends with container |
| Object Ownership    | No                 | Weak ownership       | Strong ownership       |
| Example             | Teacher–Student    | Department–Professor | House–Room             |

---

## 🔍 4. Key Characteristics of Aggregation

- **"Has-a"** relationship  
- The aggregated class can **exist independently**  
- The container does **not destroy** the aggregated object  
- Loose **coupling** between classes  
- Typically implemented via **pointers/references**  

---

## 📚 5. Visual Diagram

```cpp
[Professor] <—— (aggregation) —— [Department]
     ↑                                 ↑
 Exists independently         Has a reference to
```
## 🧪 6. Another Example: Library and Book

```cpp
class Book {
public:
    string title;
    Book(string t) : title(t) {}
};

class Library {
private:
    Book* book;

public:
    Library(Book* b) {
        book = b;
    }

    void show() {
        cout << "Library contains book: " << book->title << endl;
    }
};

int main() {
    Book b("OOP in C++");
    Library lib(&b);
    lib.show();
}
```
## ✅ Book object exists outside and before the Library.

---

## ✏️ Classwork Exercises

- **Create a Team and Player Class**  
  - `Team` class aggregates multiple `Player` objects (via pointers or vector)  
  - Players exist independently of the team

- **Company and Employee**  
  - Each company has a list of employees  
  - Employees are created before the company and passed into it

- **Course and Teacher**  
  - Implement aggregation where a `Course` has a `Teacher`, but the teacher object is not owned  

---

## 📝 Homework Assignments

- **University and Department**  
  - Model aggregation: `University` has `departments`, but departments can be created or used separately

- **Hospital and Doctor**  
  - Assign a `Doctor` to a `Hospital` via pointer or reference  
  - Show that a doctor can work in more than one hospital

- **Create a Magazine and Publisher Class**  
  - Aggregation where `Magazine` uses `Publisher`, but `Publisher` object is created independently

- **Design a UML Diagram**  
  - For the example of `Classroom` and `Student` (aggregation)  
  - Then implement it in C++ with **two-way linkage**

---

## 🧾 Summary Table

| Concept            | Description                                          |
|--------------------|------------------------------------------------------|
| Aggregation        | **"Has-a"** relationship with weak ownership         |
| Lifespan           | Aggregated objects can **outlive the container**     |
| Implementation     | Use **references** or **pointers**                   |
| Memory Control     | Aggregator does **not destroy** aggregated object    |
| Coupling           | **Loose coupling** between classes                   |

---

## 💬 Final Thought

**Aggregation** allows OOP systems to reflect **real-world structures** while maintaining **modularity** and **independence**. It's essential for **scalable**, **flexible**, and **reusable** designs.
