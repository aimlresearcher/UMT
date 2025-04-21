# 🎓 Lecture: Uniform Cost Search (UCS)  
**Course**: Artificial Intelligence (CS3151)  
**Topic**: Uninformed Search Strategy – UCS  
**CLO**: Implement classical AI techniques (BT Level 3 – Apply)

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🧠 Understand the concept of **Uniform Cost Search (UCS)**  
- 🔄 Distinguish UCS from **BFS** and **DFS**  
- 🛣️ Learn how UCS finds **optimal paths in weighted graphs**  
- 💻 Implement UCS using a **priority queue in Python**  
- 🗺️ Apply UCS to real-world examples like **road maps** and **path planning**

---

## 🧠 Part 1: What is Uniform Cost Search?

### 📘 Definition:

**Uniform Cost Search (UCS)** is an uninformed search algorithm that expands the **least-cost node first**.  
It uses a **priority queue** sorted by **cumulative path cost**.

> UCS is a **special case of Dijkstra’s Algorithm**.

---

### ✅ UCS Key Properties

| Property         | Description                               |
|------------------|-------------------------------------------|
| Data Structure   | Priority Queue (min-heap)                 |
| Strategy         | Cost-based node expansion                 |
| Complete         | ✅ Yes (in finite graphs)                 |
| Optimal          | ✅ Yes (with non-negative edge costs)     |
| Time Complexity  | O(b<sup>1+⌊C*/ε⌋)                         |
| Space Complexity | Same as time complexity                   |

---

### ❗ BFS vs. UCS Comparison

| Feature            | 🔵 BFS                          | 🔶 UCS                                  |
|--------------------|----------------------------------|------------------------------------------|
| Cost Assumption    | Equal cost per step              | Varying cost allowed                    |
| Order of Expansion | Shallowest node first            | Least total cost node first             |
| Optimality         | ✅ Yes (only for equal costs)    | ✅ Yes (regardless of path costs)       |

---

## 🗺️ Part 2: Example – Romania Map with Path Costs

**Problem:**  
Find the **lowest-cost path** from **Arad** to **Bucharest**

### 🛣️ Road Distances (in km):

| Road                   | Distance |
|------------------------|----------|
| Arad → Sibiu           | 140 km   |
| Arad → Timisoara       | 118 km   |
| Sibiu → Fagaras        | 99 km    |
| Fagaras → Bucharest    | 211 km   |
| Timisoara → Lugoj      | 111 km   |
| Lugoj → Mehadia        | 70 km    |
| Mehadia → Drobeta      | 75 km    |
| Drobeta → Craiova      | 120 km   |
| Craiova → Pitesti      | 138 km   |
| Pitesti → Bucharest    | 101 km   |

### 🔍 UCS Expected Path:

**Arad → Sibiu → Fagaras → Bucharest**  
**Total Cost** = 140 + 99 + 211 = **450 km**

---

### 💡 Mini Quiz #1:

**Q:** Why might UCS reach Bucharest **after DFS or BFS**?  
**A:** UCS explores paths in order of **least total cost**, not first found or shallowest depth. It may take **longer** but guarantees the **optimal path**.

---

## 🧱 Part 3: UCS Algorithm (Pseudocode)

```text
UCS(problem):
  Initialize priority queue with initial node (cost = 0)
  Initialize explored set
  
  while queue is not empty:
    node ← queue.pop_lowest_cost()
    if node is goal:
        return solution
    if node not in explored:
        explored.add(node)
        for each child of node:
            total_cost = cost_so_far + step_cost
            add child to queue with priority = total_cost
```
## 💻 Part 4: Python Implementation – Uniform Cost Search (UCS)

```python
import heapq

romania_map = {
    'Arad': [('Zerind', 75), ('Sibiu', 140), ('Timisoara', 118)],
    'Zerind': [('Oradea', 71), ('Arad', 75)],
    'Oradea': [('Zerind', 71), ('Sibiu', 151)],
    'Sibiu': [('Arad', 140), ('Oradea', 151), ('Fagaras', 99), ('Rimnicu Vilcea', 80)],
    'Fagaras': [('Sibiu', 99), ('Bucharest', 211)],
    'Timisoara': [('Arad', 118), ('Lugoj', 111)],
    'Lugoj': [('Timisoara', 111), ('Mehadia', 70)],
    'Mehadia': [('Lugoj', 70), ('Drobeta', 75)],
    'Drobeta': [('Mehadia', 75), ('Craiova', 120)],
    'Craiova': [('Drobeta', 120), ('Rimnicu Vilcea', 146), ('Pitesti', 138)],
    'Rimnicu Vilcea': [('Sibiu', 80), ('Craiova', 146), ('Pitesti', 97)],
    'Pitesti': [('Rimnicu Vilcea', 97), ('Craiova', 138), ('Bucharest', 101)],
    'Bucharest': [('Fagaras', 211), ('Pitesti', 101)]
}

def ucs(start, goal):
    queue = [(0, [start])]  # (cumulative cost, path)
    visited = set()

    while queue:
        cost, path = heapq.heappop(queue)
        node = path[-1]

        if node == goal:
            return path, cost

        if node not in visited:
            visited.add(node)
            for neighbor, edge_cost in romania_map.get(node, []):
                if neighbor not in visited:
                    heapq.heappush(queue, (cost + edge_cost, path + [neighbor]))

    return None, float('inf')

# Run UCS
path, total_cost = ucs("Arad", "Bucharest")
print("UCS Path:", " → ".join(path))
print("Total Cost:", total_cost)
```
## 🖥️ Sample Output:

```yaml
UCS Path: Arad → Sibiu → Fagaras → Bucharest
Total Cost: 450
```
## ✏️ Classwork

### ✅ Task 1:
Trace the priority queue step-by-step when running UCS on **Arad → Bucharest**.  
At each step, show:

- **Node selected**
- **Current queue content**

---

### ✅ Task 2:
Modify the UCS code to print:

- **Nodes expanded**
- **Total time** (use `time` module)

---

## 📝 Homework Assignment

### 📖 Theory:
Explain why UCS always finds the **optimal path** but may expand more nodes than **DFS**.

### 💻 Practical:
Modify the UCS code to work on a **2D grid** with varying movement costs.

### 🚀 Challenge:
Add **visualization** with a tree graph using **networkx** or **graphviz**.

---

## 🧠 Summary

- UCS is a generalization of **BFS** for **weighted graphs**
- Expands **lowest-cost path** using a **priority queue**
- ✅ **Optimal** and **complete** with non-negative costs
- Used in **shortest path**, **robot navigation**, **GPS routing**
