# 🎓 Lecture: The 8-Puzzle Problem – Theory and Code

---

## 🎯 Learning Objectives

By the end of this lecture, students will:

- 🧠 Understand the structure of the 8-puzzle problem  
- 📦 Learn how to represent states, actions, and goals in AI  
- 🧮 Apply the A* search algorithm using a heuristic (Manhattan distance)  
- 🔍 Trace search steps for finding the solution path  

---

## 🧩 What is the 8-Puzzle Problem?

The 8-puzzle consists of a 3x3 grid with **8 numbered tiles** and **1 blank space**.

🎯 **Goal**: Rearrange tiles to reach the **goal configuration** using a series of moves by sliding tiles into the blank space.

### 🧩 Example:

**Initial State:**

```sql
Initial State:           Goal State:
1 2 3                    1 2 3
4 0 6        →           4 5 6
7 5 8                    7 8 0
```
## 🧱 Problem Formulation

| 🔹 Element           | 📖 Description                                  |
|----------------------|--------------------------------------------------|
| Initial State        | Any arrangement of 8 numbered tiles + 1 blank   |
| Actions              | Move blank: Up, Down, Left, Right               |
| Transition Model     | Resulting state after applying an action        |
| Goal Test            | Tiles are in order with blank in last position  |
| Path Cost            | Typically 1 per move                            |

---

## 💡 Heuristic Function: Manhattan Distance

- Manhattan Distance is the **sum of the vertical and horizontal distances** of each tile from its goal position  
- Used in **A*** algorithm to calculate estimated cost to goal  
- `f(n) = g(n) + h(n)`  
  - `g(n)`: cost so far to reach node `n`  
  - `h(n)`: estimated cost to goal from node `n`

---

## 🧠 Agent Strategy: A* Search

A* search finds the **lowest-cost path** by balancing actual cost with estimated cost to the goal.  
✅ It is **informed**, **complete**, and **optimal** (with admissible heuristic).

---

## 🧪 Mini Quiz

**Q:** Why is A* preferred over BFS for solving 8-puzzle?  
**A:** Because A* uses a heuristic, making it more efficient and goal-directed compared to uninformed BFS.

---

## 💻 Python Code: Solving 8-Puzzle with A*

```python
import heapq

GOAL_STATE = [[1, 2, 3], [4, 5, 6], [7, 8, 0]]

def state_to_tuple(state):
    return tuple([item for row in state for item in row])

def manhattan_distance(state):
    distance = 0
    for i in range(3):
        for j in range(3):
            val = state[i][j]
            if val != 0:
                goal_i, goal_j = divmod(val - 1, 3)
                distance += abs(i - goal_i) + abs(j - goal_j)
    return distance

def find_blank(state):
    for i in range(3):
        for j in range(3):
            if state[i][j] == 0:
                return i, j

def get_neighbors(state):
    i, j = find_blank(state)
    moves = []
    directions = [(-1,0),(1,0),(0,-1),(0,1)]  # Up, Down, Left, Right
    for di, dj in directions:
        ni, nj = i + di, j + dj
        if 0 <= ni < 3 and 0 <= nj < 3:
            new_state = [row[:] for row in state]
            new_state[i][j], new_state[ni][nj] = new_state[ni][nj], new_state[i][j]
            moves.append(new_state)
    return moves

def a_star(start):
    visited = set()
    pq = []
    heapq.heappush(pq, (manhattan_distance(start), 0, start, []))
    
    while pq:
        est_total_cost, g, current, path = heapq.heappop(pq)
        current_tuple = state_to_tuple(current)
        
        if current == GOAL_STATE:
            return path + [current]
        
        if current_tuple in visited:
            continue
        visited.add(current_tuple)
        
        for neighbor in get_neighbors(current):
            if state_to_tuple(neighbor) not in visited:
                heapq.heappush(pq, (
                    g + 1 + manhattan_distance(neighbor),
                    g + 1,
                    neighbor,
                    path + [current]
                ))
    return None

# Test
start_state = [[1, 2, 3], [4, 0, 6], [7, 5, 8]]
solution = a_star(start_state)

# Print solution steps
if solution:
    print("Steps to reach goal:")
    for step in solution:
        for row in step:
            print(row)
        print("↓")
else:
    print("No solution found.")
```
## 📈 Sample Output (IntelliJ-style Console)

```csharp
Steps to reach goal:
[1, 2, 3]
[4, 0, 6]
[7, 5, 8]
↓
[1, 2, 3]
[4, 5, 6]
[7, 0, 8]
↓
[1, 2, 3]
[4, 5, 6]
[7, 8, 0]
↓
```
## ✏️ Classwork

- Draw the **state space tree** from a given 8-puzzle initial configuration.

- Compute the **Manhattan Distance** for the following state:

```cpp
2 8 3
1 6 4
7 0 5
```
## 📝 Homework Assignment

- 🛠️ **Modify the Code**:  
  Update your A* implementation to also print:  
  - ✅ **Total cost** (number of moves to reach the goal)  
  - 🔢 **Number of states explored**

- 📖 **Theory Question**:  
  *Explain how the choice of heuristic affects the completeness and optimality of A\**  
  - Discuss admissibility and consistency  
  - Provide examples using Manhattan Distance

---

## 🧠 Summary

- 🧩 The 8-puzzle is a **standard search problem** in Artificial Intelligence  
- 🚀 **A\*** is efficient because it uses **informed search**  
- 🧠 Solving the problem requires **clear state modeling** and **transition logic**  
- 📏 Heuristics like **Manhattan Distance** play a crucial role in real-world performance and efficiency  
