# 🎓 Lecture: Arrays in C++

## 🎯 Learning Objectives
By the end of this lecture, students will be able to:

✅ Define and declare arrays in C++.  
✅ Initialize and access array elements.  
✅ Differentiate between one-dimensional and multi-dimensional arrays.  
✅ Use loops with arrays for input/output and processing.  
✅ Implement practical problems using arrays.  
✅ Understand common mistakes and memory concepts related to arrays.  

---

## 🧠 1. What is an Array?

An **array** is a collection of elements of the **same data type** stored in **contiguous memory locations**.

### 🔹 Why Use Arrays?
- To store **multiple values** in a single variable  
- Easier management of **lists**, **data tables**, and **records**  
- Enables the use of **loops** for processing data collections  

---

## 📌 2. Declaration and Initialization

### 🔹 Declaration:
```cpp
datatype arrayName[size];
```
### 🧪 Example:

```cpp
int numbers[5]; // declares an array of 5 integers
```
### 🔹 Initialization:

```cpp
int numbers[5] = {10, 20, 30, 40, 50};
```
### 🔸 If fewer values are provided:

```cpp
int arr[5] = {1, 2}; // Remaining elements will be 0
```
## 🧪 3. Accessing Elements  
Array indexing starts from **0**.

```cpp
cout << numbers[0]; // prints 10
numbers[2] = 100;   // changes third element to 100
```
### 🔄 Looping through an array:

```cpp
for (int i = 0; i < 5; i++) {
    cout << numbers[i] << endl;
}
```
## 🔁 4. Input and Output Using Arrays

```cpp
int marks[3];

cout << "Enter 3 marks: ";
for (int i = 0; i < 3; i++) {
    cin >> marks[i];
}

cout << "You entered: ";
for (int i = 0; i < 3; i++) {
    cout << marks[i] << " ";
}
```
## 🔄 5. Processing Arrays

### Common operations:
- ➕ Sum of Elements  
- 📊 Average  
- 🔼 Maximum and Minimum  
- 🔍 Searching and Sorting  

---

### 🧪 Example: Sum of Elements

```cpp
int sum = 0;
for (int i = 0; i < 5; i++) {
    sum += numbers[i];
}
```
## 🔢 6. Multidimensional Arrays

### 🔸 2D Array (Matrix)

#### Declaration:

```cpp
int matrix[2][3]; // 2 rows, 3 columns
```
### 🔹 Initialization:

```cpp
int matrix[2][3] = {
    {1, 2, 3},
    {4, 5, 6}
};
```
### 🔸 Access:

```cpp
cout << matrix[1][2]; // prints 6
```
### 🔁 Input/Output with nested loops:

```cpp
for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 3; j++) {
        cin >> matrix[i][j];
    }
}
```
## 🛠️ 7. Limitations and Considerations

- 📏 Fixed size (cannot change during runtime)  
- ⚠️ Out-of-bounds access leads to undefined behavior  
- 🧮 Arrays are zero-indexed  
- 🚫 No built-in methods like in Python/JavaScript  

---

## 📚 8. Common Mistakes

* Accessing index beyond size:

```cpp
arr[5] = 100; // if array size is 5, this is invalid
```
* Forgetting to initialize:

```cpp
int arr[3]; // contains garbage values
```
* Off-by-one errors in loops

---

## ✏️ Classwork Exercises

- **Marks Average**  
  Input marks of 5 students in an array. Calculate average.

- **Find Maximum Value**  
  Find the highest number in an array of 10 integers.

- **Linear Search**  
  Search a value in an array using a loop.

- **Matrix Addition**  
  Add two 2D arrays (3x3) and store the result in a third array.

- **Reverse Array**  
  Print an array in reverse order.

---

## 📝 Homework Assignments

- **Frequency Counter**  
  Input 10 integers and count how many times each number appears.

- **Sorting (Selection Sort)**  
  Implement selection sort on an array of integers.

- **Matrix Multiplication**  
  Multiply two 3x3 matrices using nested loops.

- **Palindrome Check**  
  Use an array to check if a word is a palindrome.

- **Student Record Storage**  
  Store names and marks of 5 students using parallel arrays. Print highest scorer.

---

## 📌 Summary Table

| Concept            | Description                              |
|--------------------|------------------------------------------|
| Array              | Collection of same-type elements         |
| Indexing           | Starts from 0                            |
| 1D Array           | Single row/line of data                  |
| 2D Array           | Table-like (rows and columns)            |
| Input/Output       | Use loops for efficient reading and display |
| Common Use Cases   | Sum, average, search, sort               |
| Errors             | Out-of-bound, uninitialized, off-by-one  |
