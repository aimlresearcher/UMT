
# 📘 Object Oriented Programming (C++)  
## Week 15 Reading Material  
### Topic: **Templates in C++**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept and use of **templates** in C++.
- Create and use **function templates** and **class templates**.
- Implement **generic programming** using templates.
- Apply templates for reusable and type-safe code.
- Distinguish between template instantiation and specialization.

---

## 1. 🔍 What are Templates?

Templates enable writing **generic and reusable code**. A template allows functions and classes to operate with **generic types**, making them independent of data type.

---

## 2. ⚙️ Function Templates

Function templates allow defining a generic function that works with any data type.

### Syntax:

```cpp
template <typename T>
T add(T a, T b) {
    return a + b;
}
```

### Usage:

```cpp
cout << add<int>(3, 4);        // 7
cout << add<double>(2.5, 3.1); // 5.6
```

---

## 3. 🧱 Class Templates

Class templates define classes that can work with any data type.

### Syntax:

```cpp
template <class T>
class Box {
private:
    T value;
public:
    Box(T v) : value(v) {}
    void show() {
        cout << "Value: " << value << endl;
    }
};
```

### Usage:

```cpp
Box<int> b1(10);
Box<string> b2("Hello");
b1.show();
b2.show();
```

---

## 4. 🧠 Why Use Templates?

- **Type independence**: Write code once for any data type.
- **Reusability**: Avoid duplication of similar functions/classes.
- **Type safety**: Enforced at compile time.
- **Generic algorithms and containers**: Core of STL (Standard Template Library).

---

## 5. 🧪 Template Instantiation and Specialization

### Instantiation:
Compiler generates code when you use the template with a specific type.

### Specialization:
You can write a specialized version of a template for specific data types.

```cpp
template <>
class Box<char> {
public:
    Box(char c) {
        cout << "Specialized char box: " << c << endl;
    }
};
```

---

## 6. 🧰 Templates with Multiple Types

```cpp
template <class T1, class T2>
class Pair {
    T1 first;
    T2 second;
public:
    Pair(T1 a, T2 b) : first(a), second(b) {}
    void display() {
        cout << first << ", " << second << endl;
    }
};
```

---

## 7. 💻 Hands-On Walkthrough: Swap Function

```cpp
template <typename T>
void swapValues(T &a, T &b) {
    T temp = a;
    a = b;
    b = temp;
}

int main() {
    int x = 5, y = 10;
    swapValues(x, y);
    cout << "x: " << x << ", y: " << y << endl;
}
```

---

## 8. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What is the purpose of templates?
2. How are function templates different from class templates?
3. What is template specialization?
4. Can a template accept multiple types?

### 💡 Exercise

Write a template class `Calculator` with functions to:
- Add two values
- Subtract two values
- Multiply two values

Test it with both integers and doubles.

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 20  
- [GeeksforGeeks – Templates in C++](https://www.geeksforgeeks.org/templates-cpp/)

---
