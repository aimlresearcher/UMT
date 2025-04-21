# 🎓 Lecture: Greedy Best-First Search (GBFS)  
**Topic**: Informed Search Strategy – Heuristic-Based Search  
**CLO2**: Implement classical AI techniques  
**📘 Textbook**: *Artificial Intelligence: A Modern Approach* (Russell & Norvig)

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- Understand the principle of **Greedy Best-First Search**
- Learn how **heuristics** guide the search direction
- Implement **GBFS in Python** using a **priority queue**
- Analyze **completeness, optimality**, and **efficiency**
- Compare GBFS with other search strategies

---

## 🧠 Part 1: Introduction to Informed Search

### 📘 Informed vs. Uninformed Search

| Uninformed Search         | Informed Search                |
|---------------------------|--------------------------------|
| No domain knowledge       | Uses a heuristic function h(n) |
| Blindly explores           | Focuses on promising nodes     |
| Examples: BFS, DFS, UCS   | Examples: GBFS, A*, Hill Climbing |

---

## 🔍 Part 2: What is Greedy Best-First Search?

**Greedy Best-First Search (GBFS)** selects the node that appears to be **closest to the goal**, based on a **heuristic estimate**.

- Uses **heuristic h(n)** → estimated cost from node `n` to goal  
- **Ignores g(n)** → actual cost from start to node  

### 📌 Evaluation Function:

```text
f(n) = h(n)
```
## 💡 Mini Quiz #1:

**Q:** Why might GBFS miss a cheaper or shorter path?  
**A:** GBFS only considers the **heuristic value h(n)** and **ignores the actual cost** from the start node (`g(n)`), so it may follow a path that looks close to the goal but is actually longer or more expensive.

---

## 🧱 Part 4: GBFS Algorithm (Pseudocode)

```text
GBFS(problem):
  Initialize frontier with initial node (priority = h(n))
  Initialize explored set

  while frontier is not empty:
    node ← pop node with lowest h(n)
    if node is goal:
        return path
    add node to explored
    for each child of node:
        if child not in frontier or explored:
            add child to frontier
```
## 💻 Part 5: Python Implementation – Greedy Best-First Search (GBFS)

```python
import heapq

romania_map = {
    'Arad': [('Sibiu', 140), ('Zerind', 75), ('Timisoara', 118)],
    'Sibiu': [('Fagaras', 99), ('Oradea', 151)],
    'Fagaras': [('Bucharest', 211)],
    'Zerind': [('Oradea', 71)],
    'Oradea': [('Sibiu', 151)],
    'Timisoara': [('Lugoj', 111)],
    'Lugoj': [('Mehadia', 70)],
    'Mehadia': [('Drobeta', 75)],
    'Drobeta': [('Craiova', 120)],
    'Craiova': [('Pitesti', 138)],
    'Pitesti': [('Bucharest', 101)],
    'Bucharest': []
}

heuristics = {
    'Arad': 366, 'Sibiu': 253, 'Fagaras': 176, 'Bucharest': 0,
    'Zerind': 374, 'Oradea': 380, 'Timisoara': 329, 'Lugoj': 244,
    'Mehadia': 241, 'Drobeta': 242, 'Craiova': 160, 'Pitesti': 100
}

def greedy_best_first(start, goal):
    frontier = [(heuristics[start], [start])]
    visited = set()

    while frontier:
        h_val, path = heapq.heappop(frontier)
        current = path[-1]

        if current == goal:
            return path

        if current not in visited:
            visited.add(current)
            for neighbor, _ in romania_map.get(current, []):
                if neighbor not in visited:
                    heapq.heappush(frontier, (heuristics[neighbor], path + [neighbor]))
    return None

# Run GBFS
path = greedy_best_first("Arad", "Bucharest")
print("Greedy BFS Path:", " → ".join(path))
```
## 🖥️ Sample Output

```yaml
Greedy BFS Path: Arad → Sibiu → Fagaras → Bucharest
```

## ✏️ Classwork

### ✅ Task 1:
Draw the **GBFS search tree** for **Arad → Bucharest**, showing `h(n)` at each node.

---

### ✅ Task 2:
Modify the code to print:
- **Nodes expanded**
- **Heuristic values** at each step

---

## 📝 Homework Assignment

### Theory:
Explain **two situations where GBFS fails to find the optimal solution**.

### Coding:
Replace the heuristic function with one that **overestimates**.  
**Observe behavior** and discuss how it affects the path.

### Advanced:
Implement **A\*** using: $f(n) = g(n) + h(n)$ and compare results.
## 📊 Part 6: Summary Table

| Strategy | Uses Cost?     | Uses Heuristic? | Complete | Optimal | Space       | Notes                                 |
|----------|----------------|------------------|----------|---------|--------------|----------------------------------------|
| BFS      | Yes (uniform)  | No               | ✅       | ✅      | High         | Explores level by level                |
| DFS      | No             | No               | ❌       | ❌      | Low          | Goes deep blindly                      |
| UCS      | ✅             | No               | ✅       | ✅      | High         | Expands lowest-cost path               |
| GBFS     | ❌             | ✅               | ❌       | ❌      | Medium-High  | Explores most promising nodes          |
| A*       | ✅             | ✅               | ✅       | ✅      | High         | Combines UCS + GBFS                    |

---

## 🧠 Summary

- **GBFS** is fast and memory-efficient but may fail in **optimality** and **completeness**
- Driven solely by **`h(n)`** — a heuristic estimate to the goal
- It is a **greedy** approach, not guaranteed to find the best solution
- Can be improved with **A\***, which adds actual cost **`g(n)`** to the evaluation

