# 🎓 Lecture: Admissible Heuristics, Optimality of A*, and Heuristic Dominance  
**Course**: CS3151 Artificial Intelligence  
**Topic**: Heuristic Search – A* Properties and Heuristic Design  
**CLO2**: Implement classical AI techniques  
**📘 Text**: *Artificial Intelligence: A Modern Approach* (Russell & Norvig)

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- Define and construct **admissible heuristics**
- Understand the conditions for **A\*’s optimality**
- Analyze and prove **heuristic dominance**
- Compare heuristics and evaluate their efficiency in guiding the search
- Implement and test different **heuristic functions** in **A\***

---

## 🧠 Part 1: Admissible Heuristics

### 📘 Definition:
A heuristic **h(n)** is admissible if it **never overestimates** the true cost to reach the goal from node `n`. In other words:

### ✅ Mathematical Condition:

```css
∀n: h(n) ≤ h*(n)
```
### 📌 Why it matters:

- **Ensures A\* will never miss the optimal path**  
- Guarantees **optimality** in **tree search** (and **graph search** with consistency)

---

### ✅ Examples of Admissible Heuristics:

| Problem       | Admissible Heuristic                          |
|---------------|-----------------------------------------------|
| 8-Puzzle      | Number of misplaced tiles, Manhattan Distance |
| Route Planning| Straight-line (Euclidean) distance            |
| Grid Maze     | Manhattan distance                           |

---

### ❌ Not Admissible:

Overestimating the cost misleads **A\*** and may cause it to skip **optimal solutions**.

```python
# BAD: h(n) = real_cost(n) + 10 → Overestimates
```
## 🔍 Part 2: Optimality of A*

### 📘 Optimality Conditions (Tree Search):

**✅ A\* is optimal if:**

- The heuristic is **admissible**  
- The step costs are **non-negative**

### 📘 Optimality Conditions (Graph Search):

**✅ A\* is optimal if:**

- The heuristic is **consistent**

---

### 📘 Consistency (Monotonicity):

A heuristic **h** is **consistent** if:

```scss
h(n) ≤ c(n, n') + h(n')   ∀ edge (n → n')
```
### Consistency ⇒ Admissibility

- **Consistency** implies **admissibility**, meaning that if a heuristic is consistent, it will also be admissible.
- **Consistency** ensures that A\* does not need to **revisit nodes** because it guarantees that once a node is expanded, it will not need to be expanded again, improving **efficiency**.

This is crucial for **graph search** where cycles may occur, as it ensures that A\* always follows the best path without backtracking unnecessarily.

## 💡 Mini Quiz #1:
**Q:** If a heuristic is consistent, is it always admissible?  
**A:** ✅ Yes, a consistent heuristic is always admissible.

**Q:** If a heuristic is admissible, is it always consistent?  
**A:** ❌ No, an admissible heuristic is not necessarily consistent.

---

## ⚖️ Part 3: Heuristic Dominance

### 📘 Definition:
A heuristic **h2** dominates heuristic **h1** if:

```css
∀n: h2(n) ≥ h1(n) AND both are admissible
```
## This means **h2** is more informed than **h1**.

### ✅ Benefits of Dominance:
- Fewer **node expansions**
- More **focused search**
- Faster **solution discovery**

---

## 📊 Example Table:

| Node | h1 (Misplaced) | h2 (Manhattan) |
|------|----------------|----------------|
| A    | 4              | 6              |
| B    | 3              | 5              |
| C    | 2              | 4              |

> **h2 dominates h1** because for all nodes, **h2** provides better or equal estimates than **h1**.

---

## 💡 Mini Quiz #2:
**Q:** Can an **admissible** but **less dominant** heuristic still find the **optimal path**?  
**A:** ✅ Yes, even if a heuristic is less dominant, it can still find the optimal path, but it may expand more nodes compared to a more dominant heuristic.

---

## 💻 Part 4: Python Experiment: Comparing Heuristics in A*

### Code Setup:
You can plug in different **heuristic()** functions in your **A\*** implementation and compare:
- Performance (nodes expanded)
- Path quality (optimality)
- Search efficiency (time taken)
```python
def misplaced_tiles(state):
    # Returns number of misplaced tiles
    ...

def manhattan_distance(state):
    # Returns total manhattan distance
    ...
```
## ✅ Task:
Run **A\*** on the **8-puzzle** using both heuristics.  
Record:

- **Number of nodes expanded**
- **Time taken**
- **Solution length**

---

## ✏️ Classwork

### ✅ Task 1:
**Prove that Manhattan distance is admissible for 8-puzzle using examples.**

- **Manhattan Distance** counts the total number of tile moves required to reach the goal, without considering obstacles or paths.
- Since it doesn't overestimate the true cost (it counts only the necessary steps to move each tile), it is **admissible**.

### ✅ Task 2:
Given two heuristics `h1`, `h2`, write a function that checks **dominance**.
## 📝 Homework Assignment

### Theory:
**Prove that consistency implies admissibility, but the reverse isn’t always true.**

### Code:
**Implement A\*** for a **2D grid** with:

- **Heuristic 1**: `h(n) = 0` (i.e., UCS)
- **Heuristic 2**: **Manhattan Distance**
- **Heuristic 3**: **Manhattan Distance + Diagonal penalty**

### Analysis:
Compare:
- **Node expansions** and
- **Path lengths** across all three heuristics.

---

## 📊 Summary Table

| Heuristic Type           | Admissible | Consistent | Dominates | Notes                        |
|--------------------------|------------|------------|-----------|------------------------------|
| h(n) = 0                 | ✅         | ✅         | ❌        | UCS (uninformed)             |
| Misplaced Tiles          | ✅         | ✅         | ❌        | Simple but weak              |
| Manhattan                | ✅         | ✅         | ✅        | More informed, often dominates |
| Overestimating           | ❌         | ❌         | ❌        | Invalid for optimal A\*       |

---

## 🧠 Final Summary

- **Admissibility** ensures **optimal solutions** in A\*.
- **Consistency** ensures **efficiency** in graph search by preventing node re-expansion.
- **Dominance** = fewer **expansions**, better performance.
- **A\*** with a strong **admissible heuristic** is both **optimal** and **efficient**.
