
# 📘 Object Oriented Programming (C++)  
## Week 10 Reading Material  
### Topic: **Operator Overloading**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept of **operator overloading**.
- Implement common operator overloads in C++.
- Distinguish between member and non-member operator functions.
- Identify which operators can and cannot be overloaded.
- Apply best practices in overloading for readability and safety.

---

## 1. 🔍 Introduction to Operator Overloading

Operator overloading allows you to **define or change the meaning** of operators (like +, -, ==, etc.) for user-defined types such as classes and structures.

### Why use it?
- To provide **intuitive syntax** for custom objects.
- To extend the natural behavior of operators to user-defined types.
- To enhance **code readability** and **maintainability**.

---

## 2. 🔧 Basic Syntax and Rules

### General Syntax:

As a **member function**:
```cpp
return_type ClassName::operatorOp(arguments) { }
```

As a **non-member (friend) function**:
```cpp
friend return_type operatorOp(arguments);
```

### Example:

```cpp
class Complex {
public:
    double real, imag;

    Complex(double r = 0, double i = 0) : real(r), imag(i) {}

    // Overload + operator
    Complex operator + (const Complex& other) {
        return Complex(real + other.real, imag + other.imag);
    }

    void display() {
        cout << real << " + " << imag << "i" << endl;
    }
};
```

---

## 3. ➕ Overloading Arithmetic Operators

### Example: Overloading `+`

```cpp
Complex operator+(const Complex& c1, const Complex& c2) {
    return Complex(c1.real + c2.real, c1.imag + c2.imag);
}
```

Other arithmetic operators: `-`, `*`, `/`, `%`

### Compound Assignment (`+=`, `-=`, etc.):

```cpp
Complex& operator+=(const Complex& other) {
    real += other.real;
    imag += other.imag;
    return *this;
}
```

---

## 4. ⚖️ Overloading Comparison Operators

Operators like `==`, `!=`, `<`, `>`, `<=`, `>=` can also be overloaded.

### Example:

```cpp
bool operator==(const Complex& other) {
    return real == other.real && imag == other.imag;
}
```

Note: Always consider **logical consistency** when overloading comparison operators.

---

## 5. 📥 Overloading Stream Operators

Use `<<` and `>>` to output and input custom types.

### Output Stream (`<<`):

```cpp
friend ostream& operator<<(ostream& out, const Complex& c) {
    out << c.real << " + " << c.imag << "i";
    return out;
}
```

### Input Stream (`>>`):

```cpp
friend istream& operator>>(istream& in, Complex& c) {
    in >> c.real >> c.imag;
    return in;
}
```

---

## 6. ⚠️ Operators That Cannot Be Overloaded

- `::` Scope resolution
- `.` Member access
- `.*` Pointer-to-member
- `sizeof`
- `typeid`
- `static_cast`, `dynamic_cast`, etc.

---

## 7. 📌 Best Practices

### ✔️ Do’s:
- Make operators **intuitive** and **natural**.
- Prefer **member functions** for `=`, `[]`, `()`, `->`.
- Overload in **pairs**: `==` with `!=`, `<` with `>`, etc.

### ❌ Don’ts:
- Don’t overload operators unnecessarily.
- Avoid changing operator meaning in a **non-intuitive** way.

---

## 8. 💻 Hands-On Walkthrough: Vector Class

```cpp
class Vector2D {
public:
    float x, y;

    Vector2D(float x = 0, float y = 0) : x(x), y(y) {}

    Vector2D operator+(const Vector2D& other) {
        return Vector2D(x + other.x, y + other.y);
    }

    friend ostream& operator<<(ostream& out, const Vector2D& v) {
        out << "(" << v.x << ", " << v.y << ")";
        return out;
    }
};

int main() {
    Vector2D a(2.5, 3.0), b(1.5, 2.0);
    Vector2D c = a + b;
    cout << "Result: " << c << endl;
    return 0;
}
```

---

## 9. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz (Answer in your notebook)

1. What is operator overloading?
2. List three operators that **cannot** be overloaded.
3. Can the `+` operator be overloaded as a member function?
4. What is the purpose of overloading `<<`?

### 💡 Exercise

Create a class `Fraction` that supports:
- `+` to add two fractions
- `==` to compare two fractions
- `<<` to print fractions in `numerator/denominator` format

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 11  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 8  
- [GeeksforGeeks Operator Overloading](https://www.geeksforgeeks.org/operator-overloading-c/)

---
