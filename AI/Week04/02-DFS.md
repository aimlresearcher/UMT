# 🎓 Lecture: Depth-First Search (DFS)
**Course**: Artificial Intelligence (CS3151)  
**Topic**: Classical Uninformed Search – DFS  
**CLO**: Implement classical AI techniques (BT Level 3 – Apply)

---

## 🎯 Learning Objectives

By the end of this lecture, students will:

- 🧠 Understand the **strategy and structure** of DFS  
- 🔄 Differentiate **DFS** from **BFS** using theoretical and visual comparisons  
- 📊 Analyze **time and space complexity** of DFS  
- 💻 Implement DFS using **Python**  
- 🧩 Apply DFS to classic AI problems (e.g., Romania Map, Maze, 8-Puzzle)

---

## 🧠 Part 1: Introduction to DFS

### 📘 Definition

**Depth-First Search (DFS)** explores **as far as possible** along each branch before **backtracking**.  
It uses a **stack (LIFO)** structure—either explicitly or via **recursion**.

---

### ✅ DFS Key Features

| 🔹 Property    | 📖 Value                                 |
|----------------|------------------------------------------|
| Strategy       | Uninformed (blind), depth-oriented       |
| Data Structure | Stack (LIFO) / Recursion                 |
| Complete       | ❌ No (fails in infinite/cyclic graphs)  |
| Optimal        | ❌ No                                     |
| Time           | O(b^m) — `m` = max depth                 |
| Space          | O(bm) — linear w.r.t. depth              |

---

## 🌲 Part 2: Tree Diagram Comparison

### 📘 DFS Search Tree (Visual)

```mathematica
          A
        / | \
       B  C  D
      /       \
     E         G
```
## 🔁 DFS Traversal (Starting at A)

$A → B → E → C → D → G$
## 🖥️ Sample Output:

```yaml
DFS Path: Arad → Timisoara → Lugoj → Mehadia → Drobeta → Craiova → Pitesti → Bucharest
```
## 📝 Note:
DFS path may vary depending on the **order of neighbors** in the adjacency list.

---

## ✏️ Classwork

### ✅ Task 1:
**Modify the DFS code** to count and print the following:

- 📊 **Total nodes expanded**  
- 📏 **Maximum depth reached**

Track depth as you recurse or add paths to the stack.

---

### ✅ Task 2:
Given the following graph, **draw the DFS traversal** and **corresponding search tree**:

```less
A
| \
B  C
|   \
D    G (Goal)
```
## 📝 Homework Assignment

### 📖 Theory:
*Why is DFS not guaranteed to find the optimal solution?*  
→ DFS may reach a **goal node early** on a deep, suboptimal path, **without exploring shorter paths first**.  
It **does not consider path cost or depth**, so it may **miss optimal solutions**, especially in infinite or cyclic spaces.

---

### 💻 Practical Task:
Apply **DFS** to solve a **maze or grid** represented as a **2D list**, where:
- `0` = Open path  
- `1` = Obstacle  
- Define start and goal positions  
- Find and print the path from start to goal

---

### 🚀 Advanced Task:
Modify the DFS implementation to include a **depth limit** (i.e., simulate **DLS – Depth-Limited Search**).

---

## 🔁 Bonus: DFS Variants

| Variant | 🔎 Description                                      |
|---------|-----------------------------------------------------|
| **DLS** | Depth-Limited Search – DFS with a **cutoff depth**  |
| **IDS** | Iterative Deepening – Repeated DLS from `depth=0→∞` |

---

## 🧠 Summary

- 📥 DFS dives **deep before backtracking**, using a **stack (LIFO)**  
- 💾 It is **memory-efficient** but may not be **complete** or **optimal**  
- 🌀 May follow **long or looping paths** before discovering optimal solutions  
- 🔧 **Variants like DLS or IDS** improve its effectiveness in bounded search
