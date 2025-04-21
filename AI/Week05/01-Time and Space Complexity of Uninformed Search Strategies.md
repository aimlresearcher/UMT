# 🎓 Lecture: Time and Space Complexity of Uninformed Search Strategies  
**Topic**: Performance Analysis of BFS, DFS, UCS, DLS, IDS  
**CLO2**: Implement classical AI techniques  
**📘 Text**: *Artificial Intelligence: A Modern Approach* (Russell & Norvig)

---

## 🎯 Learning Objectives

By the end of this lecture, students will:

- Understand and define **time** and **space complexity**
- Analyze **tree search** and **graph search** performance
- Compare **BFS**, **DFS**, **UCS**, **DLS**, and **IDS**
- Use **Big-O notation** to describe performance
- Evaluate trade-offs between **completeness**, **optimality**, and **efficiency**

---

## 🧠 Part 1: Preliminaries – Time & Space Complexity

### 📘 Definitions:

- **Time Complexity**: Total number of nodes generated (expanded + frontier)  
- **Space Complexity**: Maximum number of nodes stored in memory (frontier + explored)

### Variables:

- `b`: branching factor (average number of children per node)  
- `d`: depth of the shallowest goal node  
- `m`: maximum depth of the search tree  
- `C*`: cost of optimal solution  
- `ε`: smallest step cost

---

## 🔍 Part 2: Breadth-First Search (BFS)

| Feature        | Description                                      |
|----------------|--------------------------------------------------|
| Strategy       | Explores shallowest nodes first (FIFO queue)     |
| Complete       | ✅ Yes (if `b` is finite)                         |
| Optimal        | ✅ Yes (if step cost is uniform)                 |
| Time           | O(b^d)                                           |
| Space          | O(b^d)                                           |
| ⚠️ Note        | Can exhaust memory quickly on wide trees         |

---

## 🔍 Part 3: Depth-First Search (DFS)

| Feature        | Description                                      |
|----------------|--------------------------------------------------|
| Strategy       | Explores deepest nodes first (Stack / Recursion) |
| Complete       | ❌ No (fails in infinite paths)                   |
| Optimal        | ❌ No                                             |
| Time           | O(b^m)                                           |
| Space          | O(bm) – linear in depth                          |
| ✅ Note        | Very memory efficient                            |
| ❌ Warning     | May go down infinite branches                    |

---

## 🔍 Part 4: Uniform Cost Search (UCS)

| Feature        | Description                                          |
|----------------|------------------------------------------------------|
| Strategy       | Expands node with lowest cumulative cost             |
| Complete       | ✅ Yes (if step costs ≥ ε > 0)                        |
| Optimal        | ✅ Yes                                                |
| Time           | O(b^1+⌊C*/ε⌋)                                       |
| Space          | O(b^1+⌊C*/ε⌋)                                       |
| ⚠️ Note        | High memory needs – stores full frontier             |

---

## 🔍 Part 5: Depth-Limited Search (DLS)

| Feature        | Description                                           |
|----------------|-------------------------------------------------------|
| Strategy       | DFS with a maximum depth limit `l`                    |
| Complete       | ❌ No (if `l` < `d`)                                   |
| Optimal        | ❌ No                                                  |
| Time           | O(b^l)                                                 |
| Space          | O(bl)                                                 |
| ✅ Note        | Safe against infinite paths                           |
| ❌ Warning     | Can miss shallow solutions                            |

---

## 🔍 Part 6: Iterative Deepening Search (IDS)

| Feature        | Description                                           |
|----------------|-------------------------------------------------------|
| Strategy       | Repeated DLS from depth 0 to `d`                      |
| Complete       | ✅ Yes                                                |
| Optimal        | ✅ Yes (if cost = depth)                              |
| Time           | O(b^d)                                                |
| Space          | O(bd) – like DFS                                      |
| ✅ Note        | Combines DFS memory with BFS completeness             |

---

## 🧪 Part 7: Comparative Table

| Strategy | Complete | Optimal | Time               | Space          | Notes                          |
|----------|----------|---------|--------------------|----------------|--------------------------------|
| BFS      | ✅       | ✅      | O(b^d)             | O(b^d)         | Memory-heavy                   |
| DFS      | ❌       | ❌      | O(b^m)             | O(bm)          | Memory-efficient, risky        |
| UCS      | ✅       | ✅      | O(b^1+⌊C*/ε⌋)     | O(b^1+⌊C*/ε⌋) | Cost-sensitive BFS             |
| DLS      | ❌       | ❌      | O(b^l)             | O(bl)          | Good for bounded search        |
| IDS      | ✅       | ✅      | O(b^d)             | O(bd)          | Best balance for unknown `d`   |

---

## ✏️ Classwork

### ✅ Task 1:
Derive **time and space complexity of BFS**, given:  
`b = 3`, `d = 4` →  
**Time** = O(3⁴) = O(81)  
**Space** = O(3⁴) = O(81)

### ✅ Task 2:
Simulate **IDS on a tree** (drawn on board) and record:

- Nodes generated at each depth  
- Cumulative nodes

---

## 📝 Homework Assignment

### Theory:
Compare **BFS** and **UCS** in terms of:

- Node expansion order  
- Memory usage  
- Use-case suitability

### Practical:
Compute expected time complexity of **DFS** if `b = 2`, `m = 10`  
➡️ Time = O(2¹⁰) = O(1024)

### Extra:
Create a **Python simulation** that records **time and space usage** of **BFS vs. DFS** on a tree

---

## 📈 Part 8: Visualization

- **X-axis**: Search depth (`d`)  
- **Y-axis**: Nodes generated  
- Plot curves for **BFS**, **DFS**, **UCS**, and **IDS**

---

## 🧠 Summary

- Time and space complexity help predict **search feasibility**
- **BFS** and **UCS** are **optimal** but **memory-heavy**
- **DFS** is **memory-light** but **incomplete**
- **IDS** is the best **general-purpose choice** when goal depth is unknown
