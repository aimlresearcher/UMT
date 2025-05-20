
# 📘 Object Oriented Programming (C++)  
## Week 15 Reading Material  
### Topic: **Iterators and Containers in STL**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the role of **iterators** in navigating STL containers.
- Use various types of **STL containers** for storing data.
- Perform insertion, deletion, and traversal with containers.
- Combine iterators and algorithms to manipulate data efficiently.
- Choose the appropriate container for specific problems.

---

## 1. 📦 STL Containers Overview

STL provides several containers that store data in different formats. These can be classified into:

### 1. Sequence Containers
- `vector`: Dynamic array
- `list`: Doubly linked list
- `deque`: Double-ended queue

### 2. Associative Containers
- `set`: Unique keys in sorted order
- `map`: Key-value pairs
- `multiset`, `multimap`: Allow duplicate keys

### 3. Container Adapters
- `stack`: LIFO
- `queue`: FIFO
- `priority_queue`: Max-heap structure

---

## 2. 🔁 What are Iterators?

Iterators act as pointers to container elements. They help traverse containers and interact with algorithms.

### Basic Syntax:

```cpp
vector<int>::iterator it;
for (it = v.begin(); it != v.end(); ++it) {
    cout << *it << " ";
}
```

---

## 3. 🧭 Types of Iterators

| Iterator Type    | Description                     |
|------------------|---------------------------------|
| `begin()`        | Points to first element         |
| `end()`          | Points just past last element   |
| `rbegin()`       | Reverse begin                   |
| `rend()`         | Reverse end                     |
| `cbegin()`, `cend()` | Constant iterators          |

---

## 4. 🧪 Common Container Usage

### Vector:

```cpp
vector<int> v = {1, 2, 3};
v.push_back(4);
v.pop_back();
```

### List:

```cpp
list<int> l = {10, 20, 30};
l.push_front(5);
l.push_back(40);
```

### Set:

```cpp
set<int> s;
s.insert(3);
s.insert(1);
s.insert(3); // ignored (unique only)
```

### Map:

```cpp
map<string, int> scores;
scores["Ali"] = 90;
scores["Sara"] = 95;
```

---

## 5. 🔄 Traversing with Iterators

```cpp
vector<int> v = {1, 2, 3};
for (auto it = v.begin(); it != v.end(); ++it) {
    cout << *it << " ";
}
```

Or use range-based loop:

```cpp
for (int val : v) {
    cout << val << " ";
}
```

---

## 6. 🛠️ Modifying Elements

You can use iterators to insert or erase elements:

```cpp
v.insert(v.begin() + 1, 100);
v.erase(v.begin() + 2);
```

---

## 7. 🧠 Choosing the Right Container

| Container | Best For                               |
|-----------|-----------------------------------------|
| `vector`  | Random access, dynamic size             |
| `list`    | Frequent insert/delete in the middle    |
| `set`     | Unique sorted data                      |
| `map`     | Key-value data                          |
| `stack`   | LIFO operations                         |
| `queue`   | FIFO operations                         |

---

## 8. 💻 Hands-On Walkthrough

```cpp
#include <iostream>
#include <vector>
#include <set>
using namespace std;

int main() {
    vector<int> v = {3, 1, 4};
    set<int> s;

    for (int x : v) s.insert(x);

    for (auto it = s.begin(); it != s.end(); ++it) {
        cout << *it << " ";
    }

    return 0;
}
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is an iterator in STL?
2. Which container allows fast insertion at both ends?
3. How is `set` different from `vector`?
4. Can `map` contain duplicate keys?

### 💡 Exercise

Create a program to:
- Store student names and scores using `map`
- Print all students sorted by name
- Use an iterator to find a student by name

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 20  
- [GeeksforGeeks – Iterators and Containers](https://www.geeksforgeeks.org/introduction-to-stl-iterators-cpp/)

---
