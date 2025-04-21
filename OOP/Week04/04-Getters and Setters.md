# 🎓 Lecture: Getters and Setters in C++

## 🎯 Learning Objectives

By the end of this session, students will be able to:

✅ Understand what getters and setters are  
✅ Learn how to use them to control access to private class data members  
✅ Write and apply getters/setters to maintain data abstraction and encapsulation  
✅ Appreciate their role in safe object-oriented design  

---

## 🧠 1. What Are Getters and Setters?

### 🔹 Getter:  
A **public method** that **retrieves (gets)** the value of a **private data member**.

### 🔹 Setter:  
A **public method** that **modifies (sets)** the value of a **private data member**.

---

## 🔐 2. Why Use Getters and Setters?

They help implement:

✅ **Data abstraction**: expose only necessary behaviors  
✅ **Encapsulation**: keep internal state safe from direct access  
✅ **Validation**: ensure only valid values are assigned to data members  

---

## 🔧 3. Syntax and Example

```cpp
class Student {
private:
    string name;
    float gpa;

public:
    // Setter
    void setName(string n) {
        name = n;
    }

    // Getter
    string getName() {
        return name;
    }

    // Setter with validation
    void setGPA(float g) {
        if (g >= 0 && g <= 4.0)
            gpa = g;
        else
            cout << "Invalid GPA" << endl;
    }

    // Getter
    float getGPA() {
        return gpa;
    }
};

int main() {
    Student s;
    s.setName("Ali");
    s.setGPA(3.7);

    cout << "Name: " << s.getName() << ", GPA: " << s.getGPA() << endl;
}
```
## ⚠️ 4. Without Getters and Setters (BAD PRACTICE)

```cpp
class Student {
public:
    string name;  // Public variable — no control
};

int main() {
    Student s;
    s.name = ""; // Possible to assign invalid/empty data
}
```
This breaks the principle of **encapsulation** and leaves your data **vulnerable**.

---

## 🧩 5. Benefits of Using Getters and Setters

| Feature        | Explanation                                |
|----------------|--------------------------------------------|
| Encapsulation  | Prevent direct access to class variables   |
| Validation     | Add conditions to filter bad input         |
| Maintainability| Easy to update implementation              |
| Abstraction    | Hides internal details from the user       |

---

## 🧪 6. Practical Example: BankAccount Class

```cpp
class BankAccount {
private:
    float balance;

public:
    void setBalance(float b) {
        if (b >= 0) balance = b;
        else cout << "Invalid balance!" << endl;
    }

    float getBalance() {
        return balance;
    }
};
```
## ✏️ Classwork Exercises

- **Create a Car Class**  
  - Private: `speed`, `fuel`  
  - Add **getter and setter** for both fields with **validation**

- **Rectangle Class**  
  - Private: `length`, `width`  
  - Setters should **reject negative values**  
  - Getters return **current dimensions and area**

- **Book Class**  
  - Private: `title`, `price`  
  - Validate that **price > 0** in setter

---

## 📝 Homework Assignments

- **Employee Class**  
  - Private: `name`, `salary`  
  - `setSalary()` must ensure **salary > minimum wage**  
  - Display employee details using `getName()` and `getSalary()`

- **MobilePhone Class**  
  - Private: `batteryLevel`  
  - Set valid level **between 0 and 100**  
  - Get method returns **remaining battery with status message**

- **Student Result Tracker**  
  - Private: `marks`  
  - Set valid marks (**0–100**)  
  - Get method returns **grade based on marks**

---

## 🧾 Summary Table

| Term   | Role                          | Visibility |
|--------|-------------------------------|------------|
| Getter | Retrieves value               | `public`   |
| Setter | Sets value (with checks)      | `public`   |
| Data   | Hidden to protect (encapsulation) | `private`  |
