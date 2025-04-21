# 🎓 Lecture: Genetic Algorithms – Steps with Example  
**Course**: CS3151 – Artificial Intelligence  
**Topic**: Genetic Algorithms  
**CLO2**: Implement classical AI techniques  
**📘 Reference**: *Artificial Intelligence: A Modern Approach* by Russell & Norvig

---

## 🎯 Learning Objectives

By the end of this lecture, students will:

- Understand the principles of **Genetic Algorithms**  
- Learn each step of the **GA pipeline** (initialization, selection, crossover, mutation, replacement)  
- Implement a **GA** to solve a simple optimization problem  
- Visualize and evaluate **population evolution**  
- Apply **GAs** to real-world problems like **scheduling**, **function optimization**, and **N-Queens**

---

## 🧠 Part 1: What is a Genetic Algorithm?

### 📘 Definition:
A **Genetic Algorithm (GA)** is a search and optimization technique inspired by **natural selection** and **evolution**.

---

### 🔑 Core Concepts:

| Term        | Meaning                                            |
|-------------|----------------------------------------------------|
| **Gene**    | Single value or trait                              |
| **Chromosome** | A complete solution (sequence of genes)           |
| **Population** | A group of chromosomes                           |
| **Fitness** | A score indicating how good a solution is         |
| **Selection** | Process of choosing chromosomes to reproduce      |
| **Crossover** | Combining two parents to produce offspring        |
| **Mutation** | Random change in a gene to maintain diversity     |

---

## 🔁 Part 2: Steps of a Genetic Algorithm

### ✅ Step-by-Step Pipeline:
1. **Initialize population** (random chromosomes)
2. **Evaluate fitness** of each chromosome
3. **Select parents** based on fitness
4. **Crossover** to produce offspring
5. **Mutate** some offspring
6. **Replace population** with new generation
7. **Repeat from step 2** until stopping criteria met

---

## 📈 Part 3: Visual Overview

```csharp
[Initial Population]
       ↓
[Evaluate Fitness]
       ↓
[Select Parents]
       ↓
[Crossover + Mutation]
       ↓
[New Generation]
       ↓
[Repeat]
```
## 💡 Mini Quiz #1:
**Q:** What is the purpose of **mutation** in a genetic algorithm?  
**A:** **Mutation** introduces **genetic diversity** into the population by randomly altering some genes in a chromosome. This helps to prevent the algorithm from getting stuck in local maxima by allowing exploration of new solutions.

---

## 💻 Part 4: Python Example – Maximize f(x) = x² for 5-bit binary strings

### Problem:
Find binary string of length 5 such that `f(x) = x²` is maximized.

- **Chromosome**: `'01101'` → `int('01101', 2)` = `13` → **Fitness** = `13²` = `169`

```python
import random

def random_chromosome(length=5):
    return ''.join(random.choice('01') for _ in range(length))

def fitness(chromosome):
    return int(chromosome, 2) ** 2

def selection(population):
    return random.choices(
        population, weights=[fitness(ch) for ch in population], k=2)

def crossover(p1, p2):
    point = random.randint(1, len(p1) - 1)
    return p1[:point] + p2[point:], p2[:point] + p1[point:]

def mutate(chromosome, rate=0.1):
    return ''.join(
        bit if random.random() > rate else random.choice('01') for bit in chromosome)

def genetic_algorithm(pop_size=6, generations=20):
    population = [random_chromosome() for _ in range(pop_size)]

    for gen in range(generations):
        population = sorted(population, key=fitness, reverse=True)
        print(f"Gen {gen}: Best = {population[0]}, Fitness = {fitness(population[0])}")

        next_gen = population[:2]  # Elitism
        while len(next_gen) < pop_size:
            p1, p2 = selection(population)
            c1, c2 = crossover(p1, p2)
            next_gen += [mutate(c1), mutate(c2)]

        population = next_gen[:pop_size]

    return max(population, key=fitness)

best = genetic_algorithm()
print("Best Solution:", best, "→", int(best, 2), "^2 =", fitness(best))
```
## 🖥️ Sample Output

```yaml
Gen 0: Best = 10110, Fitness = 324
Gen 1: Best = 11100, Fitness = 484
...
Best Solution: 11111 → 31 ^2 = 961
```
## ✏️ Classwork

### ✅ Task 1:
Modify **fitness function** to maximize `f(x) = 30 - x²` and observe **population evolution**.

### ✅ Task 2:
Add **elitism** (top 2 chromosomes preserved in each generation) and compare results.

---

## 📝 Homework Assignment

- **Implement GA** to solve the **8-Queens problem** (fitness = number of non-attacking pairs).
- **Create a visualization** showing:
  - **Average fitness**
  - **Best fitness**
  - **Mutation effects**
  
- **Explain** why **selection pressure** is critical in balancing **exploration** and **exploitation**.

---

## 📊 Part 5: Advantages and Limitations

### ✅ Pros:
- Handles **nonlinear**, **discontinuous**, and **multimodal** functions.
- Works with **large search spaces**.
- Robust to **noise** and **uncertainty**.

### ❌ Cons:
- **Not always fast**.
- May converge to **local optima**.
- **Requires tuning** (population size, mutation rate, etc.).

---

## 🧠 Summary

- **Genetic algorithms** simulate **natural evolution**.
- They use **selection**, **crossover**, and **mutation** to evolve solutions.
- **Fitness function** guides evolution; **mutation** adds diversity.
- Suitable for **complex optimization problems** with no clear gradient.
