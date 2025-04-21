# 🎓 Lecture: Local Search, Iterative Improvement, and Hill Climbing  
**Course**: CS3151 – Artificial Intelligence  
**Topic**: Local Search Strategies  
**CLO2**: Implement classical AI techniques  
**📘 Based on**: *Artificial Intelligence: A Modern Approach* (Russell & Norvig)

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- Understand the concept of **local search** and its difference from **pathfinding search**
- Implement **hill climbing** and **iterative improvement** algorithms
- Identify limitations like **local maxima**, **plateaus**, and **ridges**
- Use variants like **stochastic hill climbing** and **first-choice hill climbing**
- Apply local search to problems like **N-Queens**, **scheduling**, and **optimization**

---

## 🧠 Part 1: What is Local Search?

### 📘 Definition:
**Local search algorithms** operate using a single current state and move only to neighboring states. They are typically used when the path is irrelevant, and only the solution state matters.

---

### ✅ Key Characteristics

| Feature         | Description                                          |
|-----------------|------------------------------------------------------|
| **State space** | No tree, just a graph of states                      |
| **Memory**      | Very low – only current state stored                 |
| **Goal**        | Optimization (max or min value)                      |
| **Examples**    | N-Queens, Scheduling, Traveling Salesman             |

---

## 🔁 Part 2: Iterative Improvement Algorithms

### 📘 Definition:
**Iterative improvement** starts with an initial solution and improves it by exploring its neighbors, repeating until a stopping condition is met.

- These do not maintain a search tree or path.

---

## 🌄 Part 3: Hill Climbing Algorithm

### 📘 Definition:
**Hill Climbing** is a local search algorithm that continuously moves to the neighboring state with the highest value.

---

### 🧮 Evaluation Function:
Often uses an **objective function** or **fitness score**.

- **Goal**: Maximize `f(n)` (or minimize `cost(n)`)

### ✅ Types of Hill Climbing:

| Type           | Description                                        |
|----------------|----------------------------------------------------|
| **Simple**     | Chooses best neighbor                              |
| **Stochastic** | Chooses randomly among improving neighbors         |
| **First-Choice**| Examines random neighbors until an improvement     |
| **Random Restart**| Repeats HC from multiple initial states          |

---

### 🗺️ Hill Climbing Landscape

- **Local maximum**: Better than neighbors but not global best.
- **Ridge**: Area with steep slope in one direction.
- **Plateau**: Flat area with no uphill path.

---

## 📈 Part 4: Visualization

**1D State Space Example**  
- This example shows how Hill Climbing algorithm moves through different states, trying to reach the highest point.

```markdown
         *
        * *
       *   *        ← Global maximum
      *     *
  * *         * *
 *               * ← Local maximum
```
* Hill climbing may get stuck in local maxima.

---

## 💡 Mini Quiz #1:
**Q:** What strategy helps overcome local maxima and plateaus in hill climbing?  
**A:** **Random Restart** or **Stochastic Hill Climbing** can help overcome local maxima and plateaus by exploring different starting points or choosing random neighbors to avoid getting stuck.

---

## 💻 Part 5: Python Example – Hill Climbing for Max f(x)

**Problem**: Maximize `f(x) = -x² + 10` in range [-10, 10]

```python
import random

def fitness(x):
    return -x**2 + 10

def hill_climb(start, step_size=1, max_iter=100):
    current = start
    for _ in range(max_iter):
        neighbors = [current + step_size, current - step_size]
        neighbor = max(neighbors, key=fitness)

        if fitness(neighbor) > fitness(current):
            current = neighbor
        else:
            break
    return current, fitness(current)

# Run
start = random.randint(-10, 10)
solution, value = hill_climb(start)
print(f"Start: {start}, Solution: {solution}, Fitness: {value}")
```
## 🖥️ Sample Output

```yaml
Start: 7, Solution: 0, Fitness: 10
```
## ✏️ Classwork

### ✅ Task 1:
**Visualize** the function `f(x) = -x² + 10` and simulate **hill climbing** from **3 random starts**.

### ✅ Task 2:
**Implement first-choice hill climbing**:
- Randomly pick one neighbor.
- Move if it improves fitness.

---

## 📝 Homework Assignment

- Implement **stochastic hill climbing** using Python.
- Modify **hill climbing** for the **8-Queens problem**.
- Describe **three weaknesses of hill climbing** and how **random restarts** solve them.

---

## 📊 Part 6: Comparison of Local Search Algorithms

| Algorithm               | Complete | Optimal | Space | Works For               |
|-------------------------|----------|---------|-------|-------------------------|
| **Hill Climbing**        | ❌       | ❌      | O(1)  | Local optima            |
| **Random Restart HC**    | ✅       | ❌      | O(1)  | Gets out of local maxima |
| **Simulated Annealing**  | ✅       | ✅*     | O(1)  | Escaping local optima   |
| **With correct cooling schedule** |          |         |       |                         |

---

## 🧠 Summary

- **Local search** is **memory-light**, but not guaranteed to find **global optima**.
- **Hill climbing** is a **greedy** approach that gets stuck in **local maxima**.
- Variants like **stochastic**, **first-choice**, and **random-restart** help overcome limitations.
- **Local search** is ideal for **large state spaces** where **path** is irrelevant.
