
# 📘 Object Oriented Programming (C++)  
## Week 12 Reading Material  
### Topic: **Friend Functions with Operator Overloading**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the purpose and syntax of **friend functions**.
- Use friend functions to **overload operators**.
- Differentiate between friend and member functions in operator overloading.
- Write and test C++ classes that use friend functions effectively.
- Apply encapsulation principles while using friend functions.

---

## 1. 🔍 What is a Friend Function?

A **friend function** is not a member of a class, but it is granted **special access** to private and protected members of the class.

This is useful in cases where:
- Two different classes need to access each other’s private members.
- A non-member function needs access for specific tasks, such as operator overloading.

---

## 2. 📦 Basic Syntax

### Inside the class:

```cpp
class MyClass {
    friend return_type function_name(arguments);
};
```

### Definition outside:

```cpp
return_type function_name(arguments) {
    // Access class members
}
```

---

## 3. ➕ Friend Function with Operator Overloading

When overloading binary operators (like `+`, `-`, `==`, etc.) where the left-hand operand is not an object of the class, you should use a friend function.

### Example: `+` Operator

```cpp
class Complex {
private:
    double real, imag;

public:
    Complex(double r = 0, double i = 0) : real(r), imag(i) {}

    friend Complex operator+(const Complex& a, const Complex& b);
};

Complex operator+(const Complex& a, const Complex& b) {
    return Complex(a.real + b.real, a.imag + b.imag);
}
```

---

## 4. 🆚 Friend vs Member in Operator Overloading

| Aspect | Friend Function | Member Function |
|--------|------------------|------------------|
| Location | Outside the class | Inside the class |
| Access | Needs `friend` keyword | Has direct access |
| Use case | When lhs is not a class object | When lhs is an object of the class |

---

## 5. 📌 Use Cases

- Arithmetic operations between two objects.
- Comparisons between two different class types.
- Custom string manipulation or formatting classes.

---

## 6. ⚠️ Best Practices

### ✔️ Do’s:
- Use friend functions when necessary for clarity or symmetry.
- Clearly document the purpose of friendship.
- Keep friend functions minimal and focused.

### ❌ Don’ts:
- Don’t overuse friendship. It breaks encapsulation.
- Avoid making unrelated functions or classes friends.

---

## 7. 💻 Hands-On Walkthrough: 2D Point

```cpp
class Point {
private:
    int x, y;

public:
    Point(int x = 0, int y = 0) : x(x), y(y) {}

    friend Point operator+(const Point& p1, const Point& p2);
    void display() const {
        cout << "(" << x << ", " << y << ")" << endl;
    }
};

Point operator+(const Point& p1, const Point& p2) {
    return Point(p1.x + p2.x, p1.y + p2.y);
}

int main() {
    Point a(1, 2), b(3, 4);
    Point c = a + b;
    c.display();  // Output: (4, 6)
    return 0;
}
```

---

## 8. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. What access does a friend function have in C++?
2. Why use a friend function to overload operators?
3. Can a friend function be inherited?
4. What is the main drawback of friend functions?

### 💡 Exercise

Create a class `Rectangle` with private members length and width. Use a friend function to:

- Add two rectangles (sum of lengths and widths)
- Compare if two rectangles are equal (`==`)

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 7  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 8  
- [GeeksforGeeks Friend Function](https://www.geeksforgeeks.org/friend-function-in-cpp/)

---
