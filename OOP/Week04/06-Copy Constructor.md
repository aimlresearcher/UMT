# 🎓 Lecture: Copy Constructor in C++ (with `char*` Fields)

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand what a copy constructor is  
✅ Distinguish between **shallow copy** and **deep copy**  
✅ Correctly implement a copy constructor in C++ when using **pointer-type data members** (e.g., `char*`)  
✅ Prevent memory-related issues like **double deletion**  
✅ Practice copy constructor concepts using a detailed `Student` class example  

---

## 🧠 1. What Is a Copy Constructor?

A **copy constructor** creates a **new object** by **copying an existing object**.

---

## 🔧 Syntax:

```cpp
ClassName(const ClassName &obj);
```
## 📝 2. Why Use a Copy Constructor?

- 🔁 To **duplicate objects** with **independent memory copies**  
- 🚫 Prevent issues with **shared pointers**, especially with `char*`, `int*`, etc.  
- 🛡️ Handle **dynamic memory safely** (e.g., strings or arrays)

---

## ⚠️ 3. Shallow Copy vs Deep Copy

### 🔹 Shallow Copy  
- Copies **only the pointer**, not the actual memory  
- Both objects share the **same memory address**  
- Deleting one object may **affect the other**

### 🔹 Deep Copy  
- Copies the **content** pointed to by the pointer  
- Each object gets its **own memory**

---

## 💣 4. Problem with Default Copy Constructor

```cpp
class Student {
public:
    char* name;

    Student(const char* n) {
        name = new char[strlen(n) + 1];
        strcpy(name, n);
    }

    ~Student() {
        delete[] name;
    }
};

int main() {
    Student s1("Ali");
    Student s2 = s1;  // Default copy constructor (Shallow copy)
}
```
## 🧨 Issue:
Both `s1` and `s2` share the **same memory**.  
Destructor will **delete it twice**, leading to a **runtime crash**.

---

## ✅ 5. Solution: Define Custom Copy Constructor (Deep Copy)

```cpp
class Student {
private:
    char* name;
    char* address;

public:
    // Constructor
    Student(const char* n, const char* a) {
        name = new char[strlen(n) + 1];
        strcpy(name, n);

        address = new char[strlen(a) + 1];
        strcpy(address, a);
    }

    // Copy Constructor (Deep Copy)
    Student(const Student &other) {
        name = new char[strlen(other.name) + 1];
        strcpy(name, other.name);

        address = new char[strlen(other.address) + 1];
        strcpy(address, other.address);
    }

    // Display Function
    void display() {
        cout << "Name: " << name << ", Address: " << address << endl;
    }

    // Destructor
    ~Student() {
        delete[] name;
        delete[] address;
    }
};
```
## 🧪 6. Test the Copy Constructor

```cpp
int main() {
    Student s1("Ali", "Lahore");
    Student s2 = s1;  // Copy constructor invoked

    cout << "Original Student: ";
    s1.display();

    cout << "Copied Student: ";
    s2.display();
}
```
## ✅ Now `s1` and `s2` have **independent copies** of `name` and `address`.

---

## 🔍 7. Constructor + Destructor Execution Flow

```cpp
Student s1("Ahmed", "Karachi");  // Constructor
Student s2 = s1;                 // Copy constructor
```
## 📌 8. Memory Diagram: Deep vs Shallow

### ❌ Shallow Copy:

```text
s1.name  ----->  "Ali"
s2.name  ----^   (same address)
```
### ✅ Deep Copy:

```rust
s1.name  ----->  "Ali"
s2.name  ----->  "Ali" (separate copy)
```
## 🔐 9. Rules & Best Practices

- ✅ Always write a **custom copy constructor** when your class uses **dynamic memory**
- 🧹 Always write a **destructor** to free memory
- ✍️ Also consider writing a **copy assignment operator** (if needed)

---

## ✏️ Classwork Exercises

### 🔸 Student Deep Copy Practice  
Create a class `Student` with `char* name`, `char* department`  
Implement:
- Parameterized constructor  
- Deep copy constructor  
- Destructor  
- Display function

### 🔸 Test Copy Behavior  
- Create object `s1`  
- Copy it into `s2`  
- Modify `s1.name` manually  
- Confirm `s2.name` remains unchanged

### 🔸 Memory Test  
- Add `cout` statements inside constructor, copy constructor, and destructor  
- Create multiple objects  
- Observe **allocation** and **deallocation order**

---

## 📝 Homework Assignments

### 📘 Course Class with `char* title` and `code`  
- Implement **deep copy constructor**  
- Test duplication of a course object

### 📖 Book Class  
- Data: `char* title`, `char* author`  
- Use **dynamic memory** and define:  
  - Constructor  
  - Copy constructor  
  - Destructor  
  - `displayBook()` function

### 📐 Create a Vector Class (Basic)  
- Members: `int* elements`, `int size`  
- Copy constructor must allocate **new memory** for the `elements` array

---

## 📊 Summary Table

| Concept                 | Description                                  |
|-------------------------|----------------------------------------------|
| Copy Constructor        | Creates a copy of an object                  |
| Default Copy Constructor| Performs shallow copy (bitwise copy)         |
| Deep Copy               | Manually copies memory to avoid shared pointers |
| Destructor              | Releases memory and cleans up                |
| `char*` Handling        | Requires `new[]` and `delete[]`              |

---

## 🧠 Tips for Students

- ✅ Use `const ClassName&` in copy constructor for **safety and efficiency**  
- 🔄 Always test classes with dynamic memory using **multiple objects**  
- 🧬 Think of copy constructor as a **cloning tool** that avoids shared memory
