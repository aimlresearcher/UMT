# 🎓 Lecture: Iterative Deepening Search (IDS)  
**Course**: Artificial Intelligence (CS3151)  
**Topic**: Combining DFS and BFS – Iterative Deepening Search  
**CLO**: Implement classical AI techniques

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🧠 Understand how **IDS** combines **DFS and BFS**  
- 🔍 Analyze the **completeness and optimality** of IDS  
- 💻 Implement IDS using **recursive DLS**  
- 🔁 Compare IDS against **DFS and BFS**  
- 🌳 Apply IDS to **real-world search spaces and tree examples**

---

## 🧠 Part 1: What is Iterative Deepening Search (IDS)?

### 📘 Definition

**Iterative Deepening Search (IDS)** performs **repeated depth-limited searches**, increasing the limit by 1 each time, until the goal is found.

> Combines the **space efficiency** of DFS with the **completeness and optimality** of BFS.

---

### ✅ Key Characteristics

| Property         | Value                                  |
|------------------|------------------------------------------|
| Strategy         | Uninformed, Depth-Incremental           |
| Complete         | ✅ Yes (in finite graphs)               |
| Optimal          | ✅ Yes (if step cost is uniform)        |
| Time Complexity  | O(b^d)                                  |
| Space Complexity | O(bd) – linear like DFS                 |

---

### ❓ Why IDS?

| Problem                   | BFS         | DFS              | IDS           |
|---------------------------|-------------|------------------|---------------|
| Infinite state space      | ❌ Risky     | ❌ Infinite loop  | ✅ Safe       |
| Memory-limited environment| ❌ High mem  | ✅ Low mem        | ✅ Efficient  |
| Optimal solution required | ✅ Yes       | ❌ No             | ✅ Yes        |

---

## 🌲 Part 2: Visual Example

**Tree:**

```css
       A
      / \
     B   C
    /     \
   D       G (goal)
```
## 🔁 IDS Steps

- **DLS with depth 0** → Visit: `A`  
- **DLS with depth 1** → Visit: `A → B`, `A → C`  
- **DLS with depth 2** → Visit: `A → B → D`, `A → C → G` ✅ (Goal found)

---

## 💡 Mini Quiz #1

**Q:** How does IDS ensure optimality in a tree with equal step costs?  
**A:** IDS finds the goal at the **shallowest possible depth** by gradually increasing depth. Since it expands nodes **level-by-level** like BFS, it ensures the **first solution found is optimal** when all step costs are equal.

---

## 🧱 Part 3: IDS Algorithm (Pseudocode)

```text
IDS(start, goal):
    for depth = 0 to ∞:
        result ← DLS(start, goal, depth)
        if result ≠ null:
            return result
```
Uses the DLS algorithm recursively with increasing depth limits.

## 💻 Part 4: Python Implementation

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

def ids(start, goal, max_depth=10):
    for depth in range(max_depth + 1):
        print(f"Trying depth limit: {depth}")
        result = dls(start, goal, depth)
        if result:
            return result
    return None

# Test IDS
start, goal = 'A', 'G'
path = ids(start, goal)
if path:
    print("IDS Path:", " → ".join(path))
else:
    print("Goal not found within depth limit.")
```
## 🖥️ Sample Output

```yaml
Trying depth limit: 0
Trying depth limit: 1
Trying depth limit: 2
IDS Path: A → C → G
```
## ✏️ Classwork

### ✅ Task 1: Trace All Steps of IDS for the Given Graph

```less
S
| \
A  B
|   \
C    G
```
Goal = G

### ✅ Task 2:
Modify the **IDS code** to print:

- 📈 **Number of DLS calls**
- 🧮 **Nodes visited at each level**

---

## 📝 Homework Assignment

### 📖 Theory:
Explain why **IDS** is a good choice for **large trees with unknown depth**.  
➡️ IDS avoids infinite loops (like DFS) and memory explosion (like BFS) while still guaranteeing optimality.

### 💻 Programming:
Use **IDS** on a **maze grid** represented as a **dictionary of cell connections**.

### 🚀 Advanced:
Add a **time delay** (e.g., using `time.sleep()`) to **animate** the path exploration visually in the terminal.

---

## 📊 Part 5: Comparison Table

| Strategy | Complete | Optimal | Time          | Space       | Best For                |
|----------|----------|---------|---------------|-------------|-------------------------|
| DFS      | ❌ No    | ❌ No   | O(b^m)        | O(bm)       | Deep but risky search   |
| BFS      | ✅ Yes   | ✅ Yes  | O(b^d)        | O(b^d)      | Shallow, safe search    |
| IDS      | ✅ Yes   | ✅ Yes  | O(b^d)        | O(bd)       | Best of both worlds     |

---

## 🧠 Summary

- ✅ **IDS = DFS + BFS hybrid**
- 🔁 Explores **shallow paths first** like BFS
- 💾 **Memory-efficient** like DFS
- 🎯 Guarantees **optimal path** (if cost = depth)
- 🌍 Great for **unknown-depth problems**
