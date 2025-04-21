# 🎓 Lecture: Simulated Annealing, Local Beam Search & Stochastic Beam Search  
**Topic**: Advanced Local Search Techniques  
**CLO2**: Implement classical AI techniques  
**📘 Text**: *Artificial Intelligence: A Modern Approach* (Russell & Norvig)

---

## 🎯 Learning Objectives

By the end of this lecture, students will:

- Understand the need for **global optimization** strategies
- Learn how **simulated annealing** avoids local optima
- Implement **local beam search** and compare it to **hill climbing**
- Differentiate between **local beam search** and **stochastic beam search**
- Apply these methods to **constraint satisfaction** and **optimization problems**

---

## 🧠 Part 1: Motivation – Escaping Local Maxima

### 🌄 The Problem:
- **Hill Climbing** gets stuck in **local maxima**, **plateaus**, or **ridges**.

### ✅ Solutions:
- **Simulated Annealing**: Controlled randomness to escape local maxima.
- **Beam Search**: Explores multiple paths at once.
- **Stochastic Beam Search**: Probabilistic selection of promising paths.

---

## 🔥 Part 2: Simulated Annealing

### 📘 Definition:
**Simulated Annealing (SA)** is a probabilistic local search algorithm that accepts worse moves with a decaying probability, allowing it to escape from **local optima**.

---

### 🔑 Key Concepts

| Concept            | Description                                        |
|--------------------|----------------------------------------------------|
| **Temperature T**   | Controls randomness (high T = more jumps)         |
| **Cooling Schedule**| Gradual reduction of T over time                  |
| **Acceptance Rule** | Always accept better states, sometimes accept worse |
  
### 🎲 Acceptance Probability:

```text
P = e^(-ΔE / T)
```
- $ΔE$ = difference in fitness (negative if worse)

- $T$ = current temperature
## 💻 Python Example: Maximize f(x) = -x² + 10

```python
import math, random

def fitness(x):
    return -x**2 + 10

def simulated_annealing(start, T=100, cooling=0.95, step_size=1):
    current = start
    while T > 0.1:
        neighbor = current + random.choice([-step_size, step_size])
        delta_e = fitness(neighbor) - fitness(current)

        if delta_e > 0 or random.random() < math.exp(delta_e / T):
            current = neighbor

        T *= cooling
    return current, fitness(current)

result = simulated_annealing(start=random.randint(-10, 10))
print(f"Solution: {result[0]}, Fitness: {result[1]}")
```
## 👥 Part 3: Local Beam Search

### 📘 Definition:
Starts with **k random states**, keeps **k best successors** at each iteration.

---

### ✅ Characteristics

| Feature    | Description                                         |
|------------|-----------------------------------------------------|
| **Input**  | Number of beams `k`                                |
| **Selection** | Best `k` successors at every step                |
| **Convergence** | Faster than random restarts                     |
| **Danger** | Can still get stuck in local optima               |

---

### 💻 Pseudocode

```text
BeamSearch(problem, k):
    Start with k random states
    loop:
        Generate all successors
        Select k best from all successors
        if any is goal:
            return solution
```
## 🎲 Part 4: Stochastic Beam Search

### 📘 Definition:
Like **local beam search**, but chooses the next generation **probabilistically**, based on **fitness**.

---

### 🧠 Key Idea:
- Better candidates are **more likely**, but not **guaranteed**, to be selected.
- This introduces **diversity** and helps explore better solutions.

---

### Comparison Table

| Algorithm             | Description                                             |
|-----------------------|---------------------------------------------------------|
| **Local Beam Search**  | Keeps best `k` states                                   |
| **Stochastic Beam Search** | Picks `k` states weighted by fitness                   |
| **Simulated Annealing** | Probabilistically accepts worse states based on `T`     |

---

## 💡 Mini Quiz #1:
**Q:** Why might **Stochastic Beam Search** outperform **Local Beam Search** in practice?  
**A:** **Stochastic Beam Search** introduces randomness in selection, which helps explore different paths, potentially avoiding local optima and leading to better solutions.

---

## ✏️ Classwork

### ✅ Task 1:
**Implement Local Beam Search** on `f(x) = -x² + 10` with `k=3` random starts.

### ✅ Task 2:
**Compare Simulated Annealing vs. Hill Climbing** for:
- **8-Queens Problem**
- **Numeric function optimization**

---

## 📝 Homework Assignment

- Modify the **simulated annealing** code to log:
  - **Temperature**
  - **Moves accepted** (better/worse)
  - **Fitness progression over time**

- **Implement stochastic beam search** and compare its performance to **local beam search**.

- **Explain** why **cooling too fast** in simulated annealing leads to **poor performance**.

---

## 📈 Visualization: SA vs HC

| Step | HC Position | SA Position |
|------|-------------|-------------|
| 1    | A           | A           |
| 2    | A           | B (worse)   |
| 3    | A           | C (better)  |
| ...  | A           | G (goal)    |

---

## 🧠 Summary

| Strategy               | Escapes Local Maxima? | Uses Multiple States? | Probabilistic? |
|------------------------|------------------------|------------------------|----------------|
| **Hill Climbing**       | ❌                     | ❌                     | ❌             |
| **Simulated Annealing** | ✅                     | ❌                     | ✅             |
| **Local Beam Search**   | ❌                     | ✅                     | ❌             |
| **Stochastic Beam Search** | ✅ (more likely)      | ✅                     | ✅             |
