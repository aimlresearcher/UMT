# Function Overloading and Overriding in C++

## 1. Function Overloading in C++

**Definition:**  
Function overloading in C++ means having **multiple functions with the same name** in the same scope, but with **different parameter lists**.

### Characteristics:
- Must differ in number or types of parameters.
- Resolved at **compile-time**.
- Improves code clarity and flexibility.

### Example:
```cpp
#include <iostream>
using namespace std;

class Calculator {
public:
    int add(int a, int b) {
        return a + b;
    }

    float add(float a, float b) {
        return a + b;
    }

    int add(int a, int b, int c) {
        return a + b + c;
    }
};

int main() {
    Calculator calc;
    cout << calc.add(2, 3) << endl;         // Output: 5
    cout << calc.add(2.5f, 3.5f) << endl;   // Output: 6.0
    cout << calc.add(1, 2, 3) << endl;      // Output: 6
    return 0;
}
```

---

## 2. Function Overriding in C++

**Definition:**  
Function overriding occurs when a **derived class redefines a method** from the **base class** with the **same signature** (same name, return type, and parameters).

### Characteristics:
- Requires **inheritance**.
- Base method should be marked as `virtual` to enable **runtime polymorphism**.
- Resolved at **run-time** using **virtual functions**.

### Example:
```cpp
#include <iostream>
using namespace std;

class Animal {
public:
    virtual void makeSound() {
        cout << "Animal makes a sound" << endl;
    }
};

class Dog : public Animal {
public:
    void makeSound() override {
        cout << "Dog barks" << endl;
    }
};

class Cat : public Animal {
public:
    void makeSound() override {
        cout << "Cat meows" << endl;
    }
};

int main() {
    Animal* pet1 = new Dog();
    Animal* pet2 = new Cat();

    pet1->makeSound();  // Output: Dog barks
    pet2->makeSound();  // Output: Cat meows

    delete pet1;
    delete pet2;

    return 0;
}
```

---

## Key Differences in C++

| Feature              | Function Overloading                  | Function Overriding                    |
|----------------------|----------------------------------------|----------------------------------------|
| Scope                | Same class                             | Base and derived classes               |
| Signature            | Must differ                            | Must be exactly the same               |
| Inheritance          | Not required                           | Required                               |
| Virtual Keyword      | Not used                               | Required in base class for polymorphism|
| Resolution Time      | Compile-time                           | Run-time                               |
