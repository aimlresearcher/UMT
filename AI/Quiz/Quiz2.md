# Solution
## 🔍 A* Search Formula

At each step, A* selects the node with the **lowest total cost**:

### 📐 Formula:
\[
f(n) = g(n) + h(n)
\]

- 🔵 **g(n)**: Actual cost from **start** to the **current node**
- 🟢 **h(n)**: Heuristic estimate from **current node** to **goal**
- 🟣 **f(n)**: Estimated total cost of the cheapest solution **through node n**

---

## 🗺️ Graph & Heuristic Recap

- 🚀 **Start**: `S`  
- 🎯 **Goal**: `G`

### 🧠 Heuristic $h(n)$

```python
h = {'S': 11, 'A': 9, 'B': 7, 'C': 4, 'D': 3, 'E': 2, 'F': 4, 'G': 0, 'H': 6, 'I': 7}
```
## ✅ Step-by-Step A* Execution

We use a priority queue ordered by `f(n) = g(n) + h(n)`.

---

### 🟩 Step 1: Start at S
- `g(S) = 0`
- `h(S) = 11`
- `f(S) = 0 + 11 = 11`

**Open list**: `{S: f=11}`  
**Closed list**: `[]`

---

### 🟦 Step 2: Expand S  
Successors: A (8), H (4), I (9)

| Node | g(n) | h(n) | f(n) | Path     |
|------|------|------|------|----------|
| A    | 8    | 9    | 17   | S → A    |
| H    | 4    | 6    | 10   | S → H    |
| I    | 9    | 7    | 16   | S → I    |

**Open list**: `{H:10, A:17, I:16}`  
**Closed list**: `[S]`

---

### 🟨 Step 3: Expand H (lowest f)  
Successors: A (3), B (9), C (1), I (2)  
From `S → H (g=4)`:

| Node | g(n)   | h(n) | f(n) | Path        |
|------|--------|------|------|-------------|
| A    | 4+3=7  | 9    | 16   | S → H → A   |
| B    | 4+9=13 | 7    | 20   | S → H → B   |
| C    | 4+1=5  | 4    | 9    | S → H → C   |
| I    | 4+2=6  | 7    | 13   | S → H → I   |

🔄 Updates:
- A (f: 17 → 16)
- I (f: 16 → 13)
- Add C (f=9)

**Open list**: `{C:9, I:13, A:16, B:20}`  
**Closed list**: `[S, H]`

---

### 🟥 Step 4: Expand C (lowest f=9)  
Successors: B (6), D (2), I (5)  
From `S → H → C (g=5)`:

| Node | g(n)   | h(n) | f(n) | Path            |
|------|--------|------|------|-----------------|
| B    | 5+6=11 | 7    | 18   | S → H → C → B   |
| D    | 5+2=7  | 3    | 10   | S → H → C → D   |
| I    | 5+5=10 | 7    | 17   | S → H → C → I   |

🔄 Updates:
- Add D (f=10)
- I already has better f=13 → no update
- B already worse (f=20 vs 18)

**Open list**: `{D:10, I:13, A:16, B:18}`  
**Closed list**: `[S, H, C]`

---

### 🟧 Step 5: Expand D (f=10)  
Successors: E (5), F (2)  
From `S → H → C → D (g=7)`:

| Node | g(n)   | h(n) | f(n) | Path                  |
|------|--------|------|------|-----------------------|
| E    | 7+5=12 | 2    | 14   | S → H → C → D → E     |
| F    | 7+2=9  | 4    | 13   | S → H → C → D → F     |

**Open list**: `{F:13, I:13, E:14, A:16, B:18}`  
**Closed list**: `[S, H, C, D]`

---

### 🟪 Step 6: Expand F (f=13)  
Successors: E (1), G (4)  
From `S → H → C → D → F (g=9)`:

| Node | g(n)   | h(n) | f(n) | Path                        |
|------|--------|------|------|-----------------------------|
| E    | 9+1=10 | 2    | 12   | S → H → C → D → F → E       |
| G    | 9+4=13 | 0    | 13   | 🎯 S → H → C → D → F → G ✅  |

🔄 Updates:
- E updated to f=12
- G is **goal** → ✅ **Path found!**

**Open list**: `{G:13, E:12, I:13, A:16, B:18}`  
**Closed list**: `[S, H, C, D, F]`
## ✅ Final Step: Reached Goal G

### 🏁 Shortest Path:
**S → H → C → D → F → G**
### 💰 Total Cost (g):

**S → H (4) + H → C (1) + C → D (2) + D → F (2) + F → G (4) = 13**
## ✅ Final Answer

- 🛣️ **Path**: S → H → C → D → F → G  
- 💰 **Total Cost**: 13

# Python Code
## ✅ A* Algorithm in Python

```python
import heapq

# Graph definition
graph = {
    'S': {'A': 8, 'H': 4, 'I': 9},
    'A': {'S': 8, 'B': 5, 'H': 3},
    'B': {'A': 5, 'H': 9, 'C': 6},
    'H': {'S': 4, 'A': 3, 'B': 9, 'C': 1, 'I': 2},
    'C': {'B': 6, 'H': 1, 'D': 2, 'I': 5},
    'D': {'C': 2, 'B': 6, 'E': 5, 'F': 2},
    'E': {'D': 5, 'F': 1, 'G': 8},
    'F': {'D': 2, 'E': 1, 'G': 4, 'I': 7},
    'G': {'E': 8, 'F': 4},
    'I': {'S': 9, 'H': 2, 'C': 5, 'F': 7}
}

# Heuristic values
heuristics = {
    'S': 11,
    'A': 9,
    'B': 7,
    'C': 4,
    'D': 3,
    'E': 2,
    'F': 4,
    'G': 0,
    'H': 6,
    'I': 7
}

def a_star_search(start, goal):
    # Priority queue: (f_score, g_score, node, path)
    open_list = [(heuristics[start], 0, start, [start])]
    visited = set()

    while open_list:
        f, g, current, path = heapq.heappop(open_list)

        if current in visited:
            continue
        visited.add(current)

        if current == goal:
            return path, g  # Found the goal

        for neighbor, cost in graph[current].items():
            if neighbor not in visited:
                g_new = g + cost
                f_new = g_new + heuristics[neighbor]
                heapq.heappush(open_list, (f_new, g_new, neighbor, path + [neighbor]))

    return None, float('inf')  # No path found

# Run the algorithm
path, cost = a_star_search('S', 'G')

# Output
print("Shortest Path:", " → ".join(path))
print("Total Cost:", cost)
```
## ✅ Output

When you run this script, the output will be:
```python
Shortest Path: S → H → C → D → F → G
Total Cost: 13
```

