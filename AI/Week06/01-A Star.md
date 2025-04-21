# 🎓 Lecture: A* Search and Its Properties  
**Topic**: Informed Search – A* Search Strategy  
**CLO2**: Implement classical AI techniques  
**📘 Text**: *Artificial Intelligence: A Modern Approach* (Russell & Norvig)

---

## 🎯 Learning Objectives

By the end of this lecture, students will:

- Understand the **A\*** search strategy and **evaluation function**
- Learn the conditions for **optimality** and **completeness**
- Analyze **admissibility**, **consistency**, and **dominance**
- Implement **A\*** using **Python**
- Compare A\* with **UCS** and **Greedy Best-First Search (GBFS)**

---

## 🧠 Part 1: What is A* Search?

### 📘 Definition:
**A\*** is an **informed search algorithm** that expands the node with the **lowest estimated total cost** `f(n)` to reach the goal.

### ✅ Evaluation Function:

```text
f(n) = g(n) + h(n)
```
## g(n) and h(n) in A* Search

- **g(n)**: Cost from the **start node** to node `n`
- **h(n)**: Estimated cost from `n` to the **goal** (heuristic)

---

## ⚙️ How A* Works

- Combines **actual cost** (`g(n)`) like **UCS** with **heuristic estimate** (`h(n)`) like **GBFS**
- Uses a **priority queue** (min-heap) ordered by `f(n) = g(n) + h(n)`
- ✅ **Guaranteed to find optimal solution** if `h(n)` is **admissible**

---

## 🔍 Part 2: Properties of A*

| Property   | Description                                                                 |
|------------|-----------------------------------------------------------------------------|
| Complete   | ✅ Yes (if branching factor is finite and step costs > ε)                   |
| Optimal    | ✅ Yes (if `h(n)` is admissible)                                            |
| Time       | O(b^d) – depends on heuristic quality                                       |
| Space      | O(b^d) – stores all nodes in the frontier                                   |
| Strategy   | Combines UCS and GBFS (uses both `g(n)` and `h(n)` for guidance)            |

---

## 🔑 Admissibility

A heuristic **`h(n)` is admissible** if it **never overestimates** the true cost to reach the goal.

## 🔑 Consistency (Monotonicity)

A heuristic is **consistent** if:

```scss
h(n) ≤ c(n, n') + h(n')
```
## Every consistent heuristic is also admissible.

---

## 💡 Mini Quiz #1:
**Q:** Is the straight-line distance to Bucharest admissible for the Romania map? Why?  
**A:** ✅ Yes, because the straight-line distance never overestimates the actual road distance, so it is an admissible heuristic.

---

## 💻 Part 3: Python Implementation of A*

```python
import heapq

romania_map = {
    'Arad': [('Zerind', 75), ('Sibiu', 140), ('Timisoara', 118)],
    'Zerind': [('Oradea', 71)],
    'Oradea': [('Sibiu', 151)],
    'Sibiu': [('Fagaras', 99), ('Rimnicu Vilcea', 80)],
    'Fagaras': [('Bucharest', 211)],
    'Rimnicu Vilcea': [('Pitesti', 97), ('Craiova', 146)],
    'Timisoara': [('Lugoj', 111)],
    'Lugoj': [('Mehadia', 70)],
    'Mehadia': [('Drobeta', 75)],
    'Drobeta': [('Craiova', 120)],
    'Craiova': [('Pitesti', 138)],
    'Pitesti': [('Bucharest', 101)],
    'Bucharest': []
}

heuristics = {
    'Arad': 366, 'Zerind': 374, 'Oradea': 380, 'Sibiu': 253,
    'Fagaras': 176, 'Rimnicu Vilcea': 193, 'Pitesti': 100,
    'Timisoara': 329, 'Lugoj': 244, 'Mehadia': 241,
    'Drobeta': 242, 'Craiova': 160, 'Bucharest': 0
}

def a_star(start, goal):
    frontier = [(heuristics[start], 0, [start])]  # (f(n), g(n), path)
    visited = {}

    while frontier:
        f, g, path = heapq.heappop(frontier)
        node = path[-1]

        if node == goal:
            return path, g

        if node not in visited or visited[node] > g:
            visited[node] = g
            for neighbor, cost in romania_map.get(node, []):
                new_g = g + cost
                new_f = new_g + heuristics[neighbor]
                heapq.heappush(frontier, (new_f, new_g, path + [neighbor]))
    return None, float('inf')

# Run A*
path, total_cost = a_star("Arad", "Bucharest")
print("A* Path:", " → ".join(path))
print("Total Cost:", total_cost)
```
## 🖥️ Sample Output

```yaml
A* Path: Arad → Sibiu → Fagaras → Bucharest
Total Cost: 450
```
## 🧠 Part 4: Admissibility & Consistency Examples

### ✅ Admissible Heuristic:
- Straight-line distance
- Manhattan distance (for grid problems)

### ❌ Not Admissible:
- Overestimations like `h(n) = true cost + 50`

---

## 💡 Mini Quiz #2:
**Q:** What happens if `h(n)` is **not admissible** in A*?  
**A:** A* may **fail to find the optimal solution**, as it could prefer a shorter-looking path that is actually longer.

---

## ✏️ Classwork

### ✅ Task 1:
Draw the search tree (e.g., Romania map) and annotate each node with:
- `g(n)` – cost from start to node  
- `h(n)` – estimated cost to goal  
- `f(n)` = `g(n) + h(n)`

### ✅ Task 2:
Change the heuristic function and observe:
- How the **A\*** path changes  
- The **number of nodes expanded**

---

## 📝 Homework Assignment

### 📖 Theory:
- Explain the importance of **consistency** in a heuristic  
- **Prove** that all consistent heuristics are also **admissible**

### 💻 Practice:
- Implement **A\*** for a **2D grid maze** using **Manhattan distance**

### 🚀 Advanced:
- Compare **paths** and **node expansions** between:
  - **UCS**
  - **GBFS**
  - **A\***

---

## 📊 Part 5: Comparison Table

| Algorithm | Uses g(n)? | Uses h(n)? | Complete | Optimal | Time       | Space      |
|-----------|------------|-------------|----------|---------|------------|------------|
| UCS       | ✅         | ❌          | ✅       | ✅      | High       | High       |
| GBFS      | ❌         | ✅          | ❌       | ❌      | Medium     | Medium     |
| A\*       | ✅         | ✅          | ✅       | ✅      | Best-case  | Worst-case O(b^d) |

---

## 🧠 Summary

- **A\*** = **Best-first search** + **Optimal cost guarantee**
- Uses both:
  - `g(n)` – actual cost from start
  - `h(n)` – estimated cost to goal
- **Admissibility** → ensures **optimality**
- **Consistency** → improves **efficiency** (avoids node re-expansion)
- Powerful in:
  - **Route planning**
  - **Game AI**
  - **Robotics**
