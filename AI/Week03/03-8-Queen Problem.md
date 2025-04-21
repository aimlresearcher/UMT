# 🎓 Lecture: 8-Queen Problem – Theory, Strategy, and Code

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- ♟️ Understand the 8-Queen problem and its formulation  
- 🧩 Recognize it as a Constraint Satisfaction Problem (CSP)  
- 🔁 Apply both backtracking and heuristic methods  
- 💻 Implement a solution using Python  
- 🎯 Visualize and explain the solution space  

---

## 🧠 Part 1: What is the 8-Queen Problem?

### 📘 Problem Statement

Place **8 queens on an 8×8 chessboard** such that **no two queens threaten each other**.

**Constraints:**

- ❌ No two queens in the same row  
- ❌ No two queens in the same column  
- ❌ No two queens on the same diagonal  

---

### 🧱 Problem Formulation

| 🔹 Element       | 📖 Description                                               |
|------------------|--------------------------------------------------------------|
| Variables        | Q1 to Q8 (each representing a queen's row or column)         |
| Domain           | {1..8} positions on the board                                |
| Constraints      | No two queens share row, column, or diagonal                 |
| Solution Space   | 64C8 combinations (significantly reduced by constraints)     |

---

### 🧩 CSP Formulation (Russell & Norvig)

- **State**: Partial assignment of queens to rows without conflict  
- **Actions**: Add a queen to the next row in a valid column  
- **Goal Test**: 8 non-attacking queens placed on the board  
- **Solution Example**: `[0, 4, 7, 5, 2, 6, 1, 3]`  
  > Each index = row, value = column where queen is placed

---

## 🧠 Part 2: Solution Strategies

### ✅ 1. Backtracking (Depth-First Search)

- Place queens **row by row**  
- If conflict → **backtrack**  
- Try next **valid column** position  

### ✅ 2. Forward Checking

- Eliminate conflicting choices from future rows  
- Prevent invalid placements early  

### ✅ 3. Heuristics (Optional / Advanced)

- **MRV** – Minimum Remaining Values  
- **LCV** – Least Constraining Value  

---

## 🔄 Part 3: Visual Explanation

### Example Board – One Valid Solution

```css
. Q . . . . . .
. . . . Q . . .
. . . . . . Q .
. . . . . Q . .
Q . . . . . . .
. . . Q . . . .
. . . . . . . Q
. . Q . . . . .
```
## 💻 Python Code Example: Backtracking

```python
N = 8

def is_safe(board, row, col):
    for i in range(row):
        if board[i] == col or \
           abs(board[i] - col) == abs(i - row):
            return False
    return True

def solve_n_queens(board, row):
    if row == N:
        return [board[:]]  # Return one solution
    solutions = []
    for col in range(N):
        if is_safe(board, row, col):
            board[row] = col
            solutions += solve_n_queens(board, row + 1)
    return solutions

def print_board(board):
    for row in board:
        line = ['.'] * N
        line[row] = 'Q'
        print(" ".join(line))
    print("\n")

# Run the solver
initial_board = [-1] * N
solutions = solve_n_queens(initial_board, 0)
print(f"Total solutions: {len(solutions)}\n")

# Display first 3 solutions
for i in range(min(3, len(solutions))):
    print(f"Solution {i+1}:")
    print_board(solutions[i])
```
## 🖥️ Sample Output:

```less
Total solutions: 92

Solution 1:
. Q . . . . . .
. . . . Q . . .
. . . . . . Q .
. . . . . Q . .
Q . . . . . . .
. . . Q . . . .
. . . . . . . Q
. . Q . . . . .
```
## ✏️ Classwork

### ✅ Task 1:
Draw the **attack zones** of a queen placed at position **(3, 4)** on an 8×8 chessboard.  
- ❌ Shade or cross out all cells in:
  - Same **row**
  - Same **column**
  - Same **diagonals**

### ✅ Task 2:
Modify the given backtracking code to **count only** the number of valid solutions, without printing them.

---

## 🧪 Mini Quiz

**Q1:** Why is the diagonal condition in the code checked with `abs(board[i] - col) == abs(i - row)`?  
👉 It checks whether the queen at (i, board[i]) lies on the same diagonal as the one at (row, col), since diagonal distance is preserved when the absolute difference in rows equals the absolute difference in columns.

**Q2:** How many queens are allowed per row and per column?  
👉 Exactly **one queen per row** and **one queen per column**.

---

## 📝 Homework Assignment

- 🖨️ **Modify the code** to print **all solutions** graphically as chessboards using `Q` and `.` characters.

- 🔍 **Research Task**:  
  *How does forward checking improve efficiency in CSPs like 8-Queens?*  
  ➤ Summarize in 3–4 lines with an example.

- 🧠 **Challenge (Optional)**:  
  Implement **MRV (Minimum Remaining Values)** or **LCV (Least Constraining Value)** heuristic in your solution.

---

## 🧠 Summary

- ♟️ The **8-Queen problem** is a classical **Constraint Satisfaction Problem (CSP)**  
- 🔄 It demonstrates the power of **backtracking** and **constraint propagation**  
- 🧩 Requires knowledge of **states**, **actions**, and **goal conditions**  
- 💻 The Python code shows how to **generate and visualize solutions**  
- 🚀 Foundational for solving **larger CSPs** like **Sudoku**, **Timetabling**, or **Resource Scheduling**
