# 🌳 Lecture: Tree Search – Theory, Visual Example, and Python Code

📘 **Based on** Chapter 3 of *Artificial Intelligence: A Modern Approach* by Russell & Norvig  
🔗 **Aligned with** CLO2 – Implement classical AI techniques  

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🧠 Understand the concept of **tree search** in AI  
- 🌐 Learn how **search trees** differ from **state spaces**  
- 🔁 Simulate **Breadth-First Search (BFS)** as a tree search strategy  
- 🌲 Trace and draw the **structure of a search tree**  
- 💻 Implement BFS in **Python** with a practical example  

---

## 🌲 Part 1: What is Tree Search?

### 📘 Definition:

A **tree search algorithm** explores paths from a **root node** by expanding nodes into **child nodes** using applicable actions.

- **Root node** = Initial state  
- **Child nodes** = Result of actions  
- **Goal test** = Checks for desired solution state

---

### 🔁 Tree Search vs. Graph Search

| 🔍 Feature       | 🌳 Tree Search                      | 🔗 Graph Search                      |
|------------------|-------------------------------------|--------------------------------------|
| Nodes visited    | May revisit same states             | Avoids revisiting states             |
| Memory usage     | Less (no visited set)               | More (tracks visited nodes)          |
| Correctness      | Can be redundant or inefficient     | More efficient and complete          |

---

## 📈 Part 2: Visual Example

### 🗺️ Problem: Romania Map – From Arad to Bucharest

**Search Tree (BFS) Structure Example:**

```markdown
                Arad
              /   |   \
         Sibiu Timisoara Zerind
         /         |       \
     Fagaras     Lugoj     Oradea
        |           |          \
    Bucharest     Mehadia     Sibiu
        |
    GOAL

```
## 📘 Nodes Explained

- **Initial State**: Arad  
- **Actions**: Drive to any directly connected city  
- **Transition Model**: Move from current city to a neighboring city  
- **Goal Test**: Reached Bucharest  
- **Path Cost**: Number of cities traversed (or total distance if weighted)

---

## 🧪 Mini Quiz

**Q1:** In BFS, in what order will cities be expanded from Arad?  
👉 Zerind, Sibiu, Timisoara (as per their order in the map dictionary)

---

## 💻 Python Code: Breadth-First Tree Search

```python
from collections import deque

romania_map = {
    'Arad': ['Zerind', 'Sibiu', 'Timisoara'],
    'Zerind': ['Oradea', 'Arad'],
    'Oradea': ['Sibiu', 'Zerind'],
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

def bfs_tree_search(start, goal):
    frontier = deque([[start]])  # Queue of paths
    while frontier:
        path = frontier.popleft()
        node = path[-1]
        print("Exploring:", node)
        if node == goal:
            return path
        for neighbor in romania_map.get(node, []):
            if neighbor not in path:  # Avoid revisiting in this path
                new_path = list(path)
                new_path.append(neighbor)
                frontier.append(new_path)
    return None

# Run BFS
solution = bfs_tree_search("Arad", "Bucharest")
print("\nPath to Bucharest:", " → ".join(solution))
```
## 🖥️ Sample Output:

```vbnet
Exploring: Arad
Exploring: Zerind
Exploring: Sibiu
Exploring: Timisoara
Exploring: Oradea
Exploring: Fagaras
Exploring: Rimnicu Vilcea
Exploring: Lugoj
Exploring: Bucharest

Path to Bucharest: Arad → Sibiu → Fagaras → Bucharest
```
## ✏️ Classwork

### ✅ Task 1:
Draw the **search tree** from "Arad" to "Bucharest" using **Depth-First Search (DFS)**.  
- Trace the **first path found** by DFS  
- Compare it with the **BFS path** from the previous example  
- Note differences in **order of exploration** and **path length**

### ✅ Task 2:
Modify the BFS code to also **print the depth** of each node explored.  
- Track depth as an additional parameter in the path  
- Print: `"Exploring: Node (Depth: X)"`

---

## 📝 Homework Assignment

- 🔁 Implement the **same search using DFS**  
- 🔍 Compare BFS and DFS on:
  - Time taken
  - Number of nodes explored
  - Path length

- 💰 Modify the BFS/DFS code to use **actual distances** (if available) instead of path length

- ✍️ **Short Answer Question**:  
  *Why does BFS guarantee the shortest path in unweighted graphs?*  
  ➤ Because it explores all nodes at the current depth level before going deeper, ensuring the first time the goal is found is through the shortest path (in terms of number of edges).

---

## 🧠 Summary

- 🌲 **Tree Search** is a foundational concept for solving problems using search in AI  
- 🔍 **BFS** is:
  - **Complete** – it always finds a solution (if one exists)  
  - **Optimal** – finds the shortest path in **unweighted graphs**  

- ⚠️ Tree search does **not** track visited states, leading to possible inefficiency due to **repetition**  
- 🎯 Clearly defining **states**, **actions**, and **goal conditions** is key to successful problem-solving in AI
