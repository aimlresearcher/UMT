
# 📘 Object Oriented Programming (C++)
## Week 16 Reading Material
### Topic: **Namespace in C++**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand what a **namespace** is and why it is used.
- Avoid name conflicts using namespaces in large projects.
- Use the `namespace` keyword to organize code logically.
- Apply both standard and user-defined namespaces.
- Use `using` directives and qualified names effectively.

---

## 1. 🔍 What is a Namespace?

A **namespace** is a declarative region that provides a scope to identifiers such as variables, functions, classes, etc. It helps prevent **name collisions**, especially when code is reused across multiple files or libraries.

---

## 2. 🧭 Motivation for Namespaces

In large projects, different libraries may use the same variable or function names, causing conflicts.

### Example Without Namespace:

```cpp
int value = 10;

int value = 20; // Error: redefinition
```

### With Namespace:

```cpp
namespace Library1 {
    int value = 10;
}

namespace Library2 {
    int value = 20;
}

cout << Library1::value; // 10
cout << Library2::value; // 20
```

---

## 3. 📦 Syntax and Usage

### Defining a Namespace:

```cpp
namespace myNamespace {
    int a = 100;
    void show() {
        cout << "Inside myNamespace" << endl;
    }
}
```

### Accessing Members:

```cpp
myNamespace::show();
cout << myNamespace::a;
```

---

## 4. 🧰 Using `using` Keyword

You can bring the entire namespace or a single element into scope:

### Whole Namespace:

```cpp
using namespace std; // Brings everything from std into scope
```

### Specific Item:

```cpp
using std::cout;
using std::endl;
```

⚠️ Avoid using `using namespace` in header files or large scopes to prevent ambiguity.

---

## 5. 🧱 Nested Namespaces

Namespaces can be nested:

```cpp
namespace A {
    namespace B {
        void func() {
            cout << "Inside A::B" << endl;
        }
    }
}
```

Access:

```cpp
A::B::func();
```

C++17 allows:

```cpp
namespace A::B {
    void func() { }
}
```

---

## 6. 🎨 Anonymous Namespaces

Used to restrict access to identifiers within a translation unit (like `static`).

```cpp
namespace {
    int secret = 42;
    void reveal() {
        cout << "Secret: " << secret << endl;
    }
}
```

No external access is allowed to `secret` or `reveal`.

---

## 7. 🧠 std Namespace

The **`std`** namespace is part of the C++ Standard Library.

Common components include:
- `std::cout`
- `std::cin`
- `std::vector`
- `std::string`

Always include `#include <iostream>` or other relevant headers before using.

---

## 8. 💻 Hands-On Walkthrough

```cpp
#include <iostream>
using namespace std;

namespace physics {
    double gravity = 9.8;
    void display() {
        cout << "Gravity: " << gravity << endl;
    }
}

int main() {
    physics::display();
    return 0;
}
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is the purpose of a namespace?
2. How do you access a variable inside a namespace?
3. What is the difference between `using namespace std;` and `std::cout`?
4. Why are anonymous namespaces useful?

### 💡 Exercise

Create two namespaces `Science` and `Math`:
- Each with a function `print()`
- Call both functions without conflict

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 22  
- [GeeksforGeeks – Namespaces in C++](https://www.geeksforgeeks.org/namespace-in-c/)

---
