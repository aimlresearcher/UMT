# 🎓 Lecture: Depth-Limited Search (DLS)  
**Course**: Artificial Intelligence (CS3151)  
**Topic**: DLS – Informed Depth-Bound Uninformed Search  
**CLO**: Implement classical AI techniques

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🧠 Understand the **need for Depth-Limited Search**
- 🚫 Identify the **limitations of DFS** that **DLS solves**
- 💻 Implement **DLS in Python**
- 🔍 Compare **DLS** with **BFS**, **DFS**, and **IDS**
- 🌳 Apply DLS in a **recursive tree or graph structure**

---

## 🧠 Part 1: What is DLS?

### 📘 Definition:

**Depth-Limited Search (DLS)** is a variation of **DFS** where nodes deeper than a specified **limit `l`** are **not expanded**.

➡️ It helps **prevent infinite loops** in search spaces with **infinite depth**.

---

### ✅ Key Properties of DLS

| Property          | DLS (Depth-Limited Search)           |
|------------------|---------------------------------------|
| Strategy          | Depth-first with depth restriction   |
| Data Structure    | Stack (LIFO) or Recursion            |
| Complete          | ❌ No (unless goal is within limit)  |
| Optimal           | ❌ No                                 |
| Time Complexity   | O(b^l) — `l` = depth limit           |
| Space Complexity  | O(bl) — proportional to depth        |

---

### ❗ DFS vs. DLS

| Feature         | DFS                        | DLS                              |
|------------------|-----------------------------|----------------------------------|
| Completeness     | ❌ No (in infinite trees)   | ❌ No (unless goal ≤ limit `l`) |
| Memory           | Low                         | Low                              |
| Infinite Loops   | ✅ Possible                 | 🚫 Avoided (via depth cut-off)  |

---

## 🌲 Part 2: Visual Example

**Sample Tree** (Goal = G)

```css
      A
     / \
    B   C
   /     \
  D       G
```
## 📏 Depth-Limited Behavior

- **Depth = 2** → ✅ DLS **can find** `G`
- **Depth = 1** → ❌ `G` is **not reachable** (pruned)

---

## 🧪 Mini Quiz #1

**Q:** Why is DLS useful in infinite state spaces like the “Successor function = n+1”?  
**A:** Because it avoids **infinite traversal** by **limiting depth**, DLS ensures the algorithm **terminates**, even when the **search tree is unbounded** (e.g., infinitely increasing numbers).

---

## 🧱 Part 3: Algorithm (Pseudocode)

```text
DLS(node, goal, limit):
    if node == goal:
        return path
    else if limit == 0:
        return 'cutoff'
    else:
        for each child of node:
            result ← DLS(child, goal, limit - 1)
            if result ≠ 'cutoff':
                return result
        return 'cutoff'
```
## 💻 Part 4: Python Code Implementation – Depth-Limited Search (DLS)

```python
graph = {
    'A': ['B', 'C'],
    'B': ['D'],
    'C': ['G'],
    'D': [],
    'G': []
}

def dls(node, goal, limit, path=None):
    if path is None:
        path = []

    path.append(node)

    if node == goal:
        return path

    if limit <= 0:
        path.pop()
        return None

    for neighbor in graph.get(node, []):
        result = dls(neighbor, goal, limit - 1, path)
        if result:
            return result

    path.pop()
    return None

# Example Run
start = "A"
goal = "G"
depth_limit = 2
result = dls(start, goal, depth_limit)

if result:
    print("DLS Path:", " → ".join(result))
else:
    print(f"Goal not found within depth {depth_limit}")
```
## 🖥️ Sample Output:

```mathematica
DLS Path: A → C → G
```
## ✏️ Classwork

### ✅ Task 1:
Modify the **DLS code** to count and print:

- 📊 **Nodes visited**  
- 📏 **Maximum recursion depth used**

Use global counters or pass variables as arguments to track these values.

---

### ✅ Task 2:
Test **DLS** on the sample tree with:

- **Depth limit = 1** → ❌ Goal `G` not found (cutoff too shallow)
- **Depth limit = 2** → ✅ Goal `G` found successfully

📝 **Explanation**:  
DLS fails at depth = 1 because `G` lies beyond the specified limit.  
It succeeds at depth = 2 because the goal is reachable within that limit.

---

## 📝 Homework Assignment

### 📖 Theory:
*What are the advantages and disadvantages of using DLS compared to DFS and BFS?*

- ✅ **Advantages**:  
  - Prevents infinite loops in infinite trees  
  - Lower memory usage than BFS  
  - Can be tuned with depth limit  

- ❌ **Disadvantages**:  
  - May miss solutions beyond the limit  
  - Incomplete and non-optimal unless combined with IDS  

---

### 💻 Coding Task:
Convert the recursive **DLS** function into an **iterative version** using an **explicit stack**.

---

### 🚀 Advance Task:
Build **Iterative Deepening Search (IDS)** by repeatedly calling DLS from depth `0` to `∞` until the goal is found.

---

## 🔁 Bonus: Bridge to IDS

| Feature     | Description                                        |
|-------------|----------------------------------------------------|
| **DLS**     | Useful for **bounded-depth** problems              |
| **IDS**     | Repeated DLS from depth `0` to ∞                   |
| **IDS**     | ✅ **Complete** + ✅ **Optimal**                   |
|             | Combines **BFS-level completeness** with **DFS-level memory efficiency** |

---

## 🧠 Summary

- **DLS** = **DFS with a depth ceiling**  
- Prevents **infinite recursion** in deep or unbounded trees  
- ✅ Easy to implement using **recursion**  
- 🧱 Foundation for **Iterative Deepening Search (IDS)**  
