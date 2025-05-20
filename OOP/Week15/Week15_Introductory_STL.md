
# 📘 Object Oriented Programming (C++)  
## Week 15 Reading Material  
### Topic: **Introductory STL (Standard Template Library)**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the structure and components of the **Standard Template Library (STL)**.
- Use **containers**, **iterators**, and **algorithms** from STL.
- Implement basic programs using `vector`, `list`, and `map`.
- Utilize STL for efficient and generic programming.
- Recognize the advantages of STL in reducing code complexity and improving performance.

---

## 1. 🔍 What is STL?

The **Standard Template Library (STL)** is a powerful library in C++ that provides:

- **Containers**: Data structures like arrays, lists, stacks, queues, etc.
- **Algorithms**: Sorting, searching, manipulating data.
- **Iterators**: Objects that act like pointers to navigate containers.
- **Function Objects** and **Allocators**

---

## 2. 📦 Containers in STL

Containers store data. Types include:

| Type        | Description                        |
|-------------|------------------------------------|
| `vector`    | Dynamic array                      |
| `list`      | Doubly linked list                 |
| `deque`     | Double-ended queue                 |
| `set`       | Stores unique elements in order    |
| `map`       | Key-value pairs                    |
| `stack`     | LIFO data structure                |
| `queue`     | FIFO data structure                |

---

## 3. 🔁 Iterators

Iterators are used to access container elements.

```cpp
vector<int>::iterator it;
for (it = v.begin(); it != v.end(); ++it) {
    cout << *it << " ";
}
```

Common iterator functions:
- `begin()`
- `end()`
- `rbegin()`, `rend()`
- `advance()`, `next()`, `prev()`

---

## 4. 🧰 Algorithms

STL algorithms work with containers via iterators.

### Examples:

```cpp
sort(v.begin(), v.end());
reverse(v.begin(), v.end());
find(v.begin(), v.end(), value);
```

Header: `<algorithm>`

---

## 5. 💡 Example: Using `vector`

```cpp
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    vector<int> v = {5, 3, 8, 1};

    sort(v.begin(), v.end());
    for (int x : v) {
        cout << x << " ";
    }

    return 0;
}
```

---

## 6. 🗺️ Example: Using `map`

```cpp
#include <iostream>
#include <map>
using namespace std;

int main() {
    map<string, int> marks;
    marks["Ali"] = 90;
    marks["Sara"] = 85;

    for (auto& pair : marks) {
        cout << pair.first << ": " << pair.second << endl;
    }

    return 0;
}
```

---

## 7. 🧪 Advantages of STL

- Code reusability
- Generic and type-safe
- Efficient and optimized implementations
- Rich set of tools for various tasks

---

## 8. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What are the three main components of STL?
2. How does a `vector` differ from a regular array?
3. What is the purpose of iterators?
4. Name three STL algorithms.

### 💡 Exercise

Write a program to:
- Store integers in a vector
- Sort them in descending order
- Print them using iterators

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 20  
- [GeeksforGeeks – STL](https://www.geeksforgeeks.org/the-c-standard-template-library-stl/)

---
