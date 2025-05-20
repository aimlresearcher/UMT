
# 📘 Object Oriented Programming (C++)  
## Week 11 Reading Material  
### Topic: **Friend Classes and Friend Functions**

---

## 🔰 Learning Objectives

By the end of this reading session, students will be able to:

- Understand the concept of **friend functions** and **friend classes** in C++.
- Identify when and why to use friendship in class design.
- Use friend functions to access private data of a class.
- Define and implement friend classes and understand their implications.
- Apply best practices to maintain encapsulation and security.

---

## 1. 🔍 Introduction to Friend Functions

A **friend function** is not a member of a class but is allowed to access its **private and protected members**.

### Why use it?
- To allow non-member functions to interact with class internals.
- To facilitate operator overloading when two classes are involved.
- To break encapsulation **only when necessary and justified**.

---

## 2. 🔧 Declaring Friend Functions

### Syntax:
Inside the class definition:

```cpp
class ClassName {
    friend return_type function_name(arguments);
};
```

### Example:

```cpp
class Box {
private:
    double width;

public:
    Box(double w) : width(w) {}

    friend void printWidth(Box b);
};

void printWidth(Box b) {
    cout << "Width: " << b.width << endl; // Accessing private member
}
```

---

## 3. 🧑‍🤝‍🧑 Friend Classes

A **friend class** can access the private and protected members of another class.

### Syntax:
```cpp
class B;

class A {
    friend class B;
    // private members
};
```

### Example:

```cpp
class B;

class A {
private:
    int data;

public:
    A() : data(5) {}

    friend class B;
};

class B {
public:
    void showA(A& a) {
        cout << "A's private data: " << a.data << endl;
    }
};
```

---

## 4. 📌 Use Cases

- Operator overloading (especially when operands are different types).
- Two or more tightly coupled classes that need internal access.
- Debugging or testing internal state without adding getters/setters.

---

## 5. ⚠️ Risks and Limitations

- Breaks **encapsulation**, so should be used **judiciously**.
- Makes classes tightly coupled — change in one class may impact the friend.
- Overuse can lead to **maintenance challenges** and security concerns.

---

## 6. ✅ Best Practices

### ✔️ Do’s:
- Use friend functions when **non-members require access** to internals.
- Use **comments** to clearly indicate the reason for friendship.
- Restrict friendship to **specific functions**, not entire classes, when possible.

### ❌ Don’ts:
- Avoid making unrelated classes or functions friends.
- Don’t use friendship as a shortcut to avoid proper design.

---

## 7. 💻 Hands-On Walkthrough: Point and Distance

```cpp
class Point {
private:
    int x, y;

public:
    Point(int x = 0, int y = 0) : x(x), y(y) {}

    friend class Distance;
};

class Distance {
public:
    static double calcDistance(const Point& a, const Point& b) {
        return sqrt((a.x - b.x)*(a.x - b.x) + (a.y - b.y)*(a.y - b.y));
    }
};

int main() {
    Point p1(1, 2), p2(4, 6);
    cout << "Distance: " << Distance::calcDistance(p1, p2) << endl;
    return 0;
}
```

---

## 8. 🧪 Self-Check Quiz and Exercises

### 📝 Quiz (Answer in your notebook)

1. What is a friend function?
2. How is a friend function different from a member function?
3. What are the benefits and drawbacks of friend classes?
4. Can a class be a friend of multiple classes?

### 💡 Exercise

Create two classes:
- `Employee` with private data: name, salary
- `HR` as a friend class that can access and modify the salary of `Employee`

---

## 📚 Further Reading

- **C++ How to Program** by Deitel & Deitel – Chapter 6  
- **Thinking in C++** by Bruce Eckel – Volume 1, Chapter 5  
- [GeeksforGeeks Friend Function](https://www.geeksforgeeks.org/friend-class-function-cpp/)

---
