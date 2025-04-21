# 🎓 Lecture: Static Members in C++

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

✅ Understand the concept of **static data members** and **static member functions**  
✅ Differentiate between **static** and **non-static** members  
✅ Know how static members relate to the **class** rather than individual objects  
✅ Use static members for **shared data**, **counters**, **constants**, and **utility functions**  
✅ Apply static concepts to **real-life inspired class-based scenarios**

---

## 🧠 1. What Are Static Members?

### 🔹 Static Data Member  
A variable that is **shared by all objects** of a class.  
It belongs to the **class itself**, not any specific object.

### 🔹 Static Member Function  
A function that can be **called without an object**.  
It can only access **static members** of the class.

---

## 🔄 2. Why Use Static Members?

| Use Case         | Description                                       |
|------------------|---------------------------------------------------|
| Shared Data      | Track data across all objects (e.g., object count) |
| Constants        | Create global class-level constants                |
| Utilities        | Perform logic not tied to any instance             |
| Memory Efficiency| One copy shared, not per object                    |

---

## 🔧 3. Syntax for Static Members

```cpp
class ClassName {
private:
    static int count; // static data member

public:
    static void showCount(); // static member function
};
```
### 🔸 Definition outside the class:

```cpp
int ClassName::count = 0;
```
## ✅ 4. Example: Counting Objects

```cpp
#include <iostream>
using namespace std;

class Student {
private:
    static int count; // shared across all objects

public:
    Student() {
        count++;
    }

    static void showCount() {
        cout << "Total Students: " << count << endl;
    }
};

// Static member must be defined outside
int Student::count = 0;

int main() {
    Student s1, s2, s3;
    Student::showCount(); // Access without object
}
```
## 🧠 Output:

```cpp
Total Students: 3
```
## 📦 5. Real-Life Analogy

Every student has a **name** (non-static)  
But the **total number of students** in the class is **one shared value** (static)

---

## 🔍 6. Static Member Function Rules

| Rule                         | Explanation                                |
|------------------------------|--------------------------------------------|
| Cannot access non-static members | Because they don't belong to any object |
| Can be called using class name   | `ClassName::functionName()`             |
| No `this` pointer                | Not tied to a particular object         |

---

## 🧪 7. Static Constants

```cpp
class Circle {
public:
    static constexpr float PI = 3.1416;

    static float area(float r) {
        return PI * r * r;
    }
};

int main() {
    cout << "Area: " << Circle::area(5.0);
}
```
✅ Useful for creating **global constants** within a class.

---

## 🔁 8. Static vs Non-Static – Comparison Table

| Feature             | Static Member                      | Non-Static Member                |
|---------------------|-------------------------------------|----------------------------------|
| Belongs to          | Class                               | Object                           |
| Number of copies    | One shared copy                     | One per object                   |
| Called using        | `ClassName::member()`               | `object.member()`                |
| Access to data      | Only static members                 | Both static and non-static       |
| Has `this` pointer  | ❌ No                               | ✅ Yes                            |

---

## ✏️ Classwork Exercises

- **Create a Counter Class**  
  - Static member: `int count`  
  - Increment it in the constructor  
  - Use a static function to show how many objects were created

- **Implement a Bank Class**  
  - Static constant: `interestRate`  
  - Method to calculate interest: `getInterest()`  
  - Try to change `interestRate` and observe behavior

- **Create a Car Class**  
  - Static member: `totalCars`  
  - Private non-static: `model`, `year`  
  - Use `showTotalCars()` to track count

---

## 📝 Homework Assignments

- **Library Book Tracker**  
  - Class `Book`  
  - Static member: `bookCount`  
  - Increment for each object, show final count

- **Online User Session Counter**  
  - Static variable `activeUsers`  
  - Increment on login (constructor), decrement on logout (destructor)

- **Electricity Bill System**  
  - Static constant: `perUnitCost`  
  - Calculate total bill using `units * perUnitCost`

- **Test Static Function Limitations**  
  - Try accessing non-static data from a static function  
  - Note the error and correct it

---

## 🧾 Summary Table

| Concept                  | Description                                |
|--------------------------|--------------------------------------------|
| `static` data member     | Shared variable for all class objects      |
| `static` member function | Can be called without object, class-level |
| `this` pointer           | Not available in static functions          |
| Memory                   | Allocated once per class                   |

## 💬 Key Takeaways

- 📦 Use **static data** to store values **shared across objects**
- ⚙️ Use **static functions** for logic that **doesn’t depend on object state**
- 🛠️ Always **define static data** outside the class
- 🌍 Static members enable:
  - **Global tracking**
  - **Shared counters**
  - **Efficient memory usage** in OOP
