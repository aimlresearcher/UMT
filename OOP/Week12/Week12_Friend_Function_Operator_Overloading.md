
# 📘 Object Oriented Programming (C++)  
## Week 12 Reading Material  
### Topic: **Friend Functions with Operator Overloading**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Combine the use of **friend functions** with **operator overloading**.
- Implement binary operator overloads using friend functions.
- Distinguish between friend and member-based operator overloads.
- Apply friend operator overloads in real-world class design.
- Recognize the appropriate use and limitations of friend-based overloading.

---

## 1. 🔍 What are Friend Functions with Operator Overloading?

Operator overloading allows redefinition of standard operators (e.g., +, -, ==) for user-defined types. When the operator function is declared as a **friend**, it has access to the class's private and protected members even though it's not a member of the class.

This is useful when:
- You want to allow symmetric binary operations.
- The left-hand operand is **not** an instance of the class.

---

## 2. ⚙️ Syntax for Friend Operator Overload

### In Class Definition:

```cpp
class MyClass {
    friend return_type operatorOp(const MyClass& lhs, const MyClass& rhs);
};
```

### Outside the Class:

```cpp
return_type operatorOp(const MyClass& lhs, const MyClass& rhs) {
    // Access private members of lhs and rhs
}
```

---

## 3. 💡 Example: Complex Number Addition

```cpp
class Complex {
private:
    float real, imag;

public:
    Complex(float r = 0, float i = 0) : real(r), imag(i) {}

    friend Complex operator+(const Complex& a, const Complex& b);
};

Complex operator+(const Complex& a, const Complex& b) {
    return Complex(a.real + b.real, a.imag + b.imag);
}
```

### Usage:

```cpp
int main() {
    Complex c1(2.5, 3.5), c2(1.5, 4.5);
    Complex c3 = c1 + c2;  // Uses friend operator+
}
```

---

## 4. 🆚 Member vs Friend in Operator Overloading

| Criteria                  | Member Function            | Friend Function              |
|---------------------------|----------------------------|------------------------------|
| Syntax                    | `Class::operator+()`       | `friend operator+()`         |
| Access to private data    | Yes                        | Yes (if declared friend)     |
| LHS flexibility           | Must be object of class    | Can be any type              |
| Common for binary ops     | Less flexible              | More flexible and natural    |

---

## 5. 🧑‍💻 Hands-On: Overloading `==` with Friend Function

```cpp
class Book {
private:
    string title;
    int pages;

public:
    Book(string t, int p) : title(t), pages(p) {}

    friend bool operator==(const Book& a, const Book& b);
};

bool operator==(const Book& a, const Book& b) {
    return a.title == b.title && a.pages == b.pages;
}
```

---

## 6. 📌 When to Use Friend-Based Operator Overloading

Use it when:
- You want **symmetrical binary operations**.
- The operator’s left operand isn’t the class object.
- You need to maintain **encapsulation** but allow specific external functions.

---

## 7. ⚠️ Best Practices

### ✔️ Do’s:
- Keep operator logic concise and predictable.
- Maintain operator symmetry and consistency.
- Comment when using friendship to explain rationale.

### ❌ Don’ts:
- Don’t expose sensitive internals unless truly necessary.
- Don’t overload operators in non-intuitive ways (e.g., using `+` for subtraction).

---

## 8. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz

1. Why are friend functions used in operator overloading?
2. Can friend operator overloads access private data?
3. What is the main difference in flexibility between friend and member operator functions?

### 💡 Exercise

Create a class `Fraction` with:
- Numerator and denominator as private members
- A friend function to overload `/` for dividing two fractions
- A friend function to overload `==` for equality comparison

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 7  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 8  
- [Friend Function with Operator Overloading – GeeksforGeeks](https://www.geeksforgeeks.org/friend-function-in-cpp/)

---
