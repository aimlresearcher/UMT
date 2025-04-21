# 🎓 Lecture: Breadth-First Search (BFS)
**Course**: Artificial Intelligence (CS3151)  
**Topic**: Classical Search Strategy – BFS  
**CLO**: Implement classical AI techniques (BT Level 3 – Apply)

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🧠 Understand the principle of Breadth-First Search  
- 🌲 Construct and visualize a search tree  
- 🔄 Differentiate between BFS and other search strategies  
- 💻 Implement BFS using Python  
- 🗺️ Apply BFS to classical problems like the Romania Map and Maze navigation  

---

## 🧠 Part 1: Introduction to BFS

### 📘 Definition:
**Breadth-First Search (BFS)** is an **uninformed** search strategy that expands the **shallowest node first**, using a **queue (FIFO)** structure.

---

### ✅ Key Characteristics

| 🔹 Property       | 📖 Description                          |
|-------------------|------------------------------------------|
| Strategy          | Uninformed, Blind                        |
| Data Structure    | Queue (FIFO)                             |
| Completeness      | ✅ Yes                                   |
| Optimality        | ✅ Yes (if all path costs are equal)     |
| Time Complexity   | O(b<sup>d</sup>) where `b` = branching factor, `d` = depth of shallowest goal |
| Space Complexity  | O(b<sup>d</sup>) – stores entire frontier |

---

## 🌲 Part 2: BFS Tree Expansion

### 📘 Example: BFS on a Simple Tree

```mathematica
        A
     /  |  \
    B   C   D
   / \      |
  E   F     G
```
## 🔁 Queue Evolution in BFS

**Start**:  
`[A]`

**Expand A**:  
`[B, C, D]`

**Expand B**:  
`[C, D, E, F]`

**Expand C**:  
`[D, E, F]`

...and so on.

---

## 🧠 Concept: Frontier vs. Explored Set

- **Frontier**:  
  The **queue of paths** (or nodes) **yet to be explored**  
  → Used in **both Tree Search and Graph Search**

- **Explored Set**:  
  Keeps track of nodes already visited  
  → **Used only in Graph Search** to avoid repeated state expansion

---

## 💡 Mini Quiz #1:

**Q:** What makes BFS optimal when all path costs are equal?  
**A:** BFS always finds the **shallowest goal node first**, ensuring the **shortest path (minimum number of steps)** is returned when all actions have equal cost.

---

## 🧱 Part 3: Algorithm (Pseudocode)

```text
BFS(problem):
  initialize frontier with initial state
  initialize explored set (optional for tree search)
  
  while frontier is not empty:
    node ← frontier.pop_front()
    if node is goal:
        return solution
    add node to explored
    expand node → add children to frontier
```
## 🗺️ Part 4: Application Example – Romania Map

🎯 **Goal**: Find a path from **Arad** to **Bucharest** using BFS.

### 📘 BFS Path:
$Arad → Sibiu → Fagaras → Bucharest$
(Shortest path in terms of steps, not distance)
> This is the **shortest path in terms of number of steps**, not necessarily geographic distance.

---

## 💻 Part 5: Python Code Implementation

```python
from collections import deque

romania_map = {
    'Arad': ['Zerind', 'Sibiu', 'Timisoara'],
    'Zerind': ['Oradea', 'Arad'],
    'Oradea': ['Zerind', 'Sibiu'],
    'Sibiu': ['Arad', 'Oradea', 'Fagaras', 'Rimnicu Vilcea'],
    'Timisoara': ['Arad', 'Lugoj'],
    'Lugoj': ['Timisoara', 'Mehadia'],
    'Mehadia': ['Lugoj', 'Drobeta'],
    'Drobeta': ['Mehadia', 'Craiova'],
    'Craiova': ['Drobeta', 'Rimnicu Vilcea', 'Pitesti'],
    'Rimnicu Vilcea': ['Sibiu', 'Craiova', 'Pitesti'],
    'Fagaras': ['Sibiu', 'Bucharest'],
    'Pitesti': ['Rimnicu Vilcea', 'Craiova', 'Bucharest'],
    'Bucharest': ['Fagaras', 'Pitesti']
}

def bfs(start, goal):
    queue = deque([[start]])
    visited = set()

    while queue:
        path = queue.popleft()
        node = path[-1]

        if node == goal:
            return path

        if node not in visited:
            visited.add(node)
            for neighbor in romania_map.get(node, []):
                new_path = list(path)
                new_path.append(neighbor)
                queue.append(new_path)
    return None

# Test
path = bfs("Arad", "Bucharest")
print("BFS Path:", " → ".join(path))
```
## 📈 Sample Output:

```yaml
BFS Path: Arad → Sibiu → Fagaras → Bucharest
```
## ✏️ Classwork

### ✅ Task 1: Trace BFS Path for the Given Map

```less
A
| \
B  C
|   \
D    G (goal)
```
## ✅ Task 2:
Modify the **BFS code** to print:
- Number of **nodes expanded**
- Current **queue size** at each step

---

## 📝 Homework Assignment

### 📖 Theory:
Compare **BFS** and **DFS** in terms of:

- **Completeness**  
- **Time & Space Complexity**  
- **Memory Usage**  
- **Applicability**

### 💻 Code:
Implement **BFS** for a **2D maze grid**, where:  
- `1 = wall`  
- `0 = open space`

---

## 🧠 Summary

- ✅ **BFS** is **complete** and **optimal** in unweighted graphs  
- 📦 Uses a **queue** to explore the **shallowest nodes first**  
- 🎯 Best suited for **shortest path problems** in **uniform-cost environments**  
- ⚠️ **High memory consumption** is the key trade-off  
