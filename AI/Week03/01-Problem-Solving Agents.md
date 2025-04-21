# 🧠 Lecture: Problem-Solving Agents, Vacuum Cleaner World, and Single-State Problems

📘 **Based on** Chapter 3 of *Artificial Intelligence: A Modern Approach* by Russell & Norvig  
🔗 **Aligned with** CLO2 – Implement classical AI techniques (BT Level 3 – Apply)

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🧠 Understand the concept and architecture of a problem-solving agent  
- 🧩 Model environments as single-state problems  
- 🧽 Analyze the Vacuum Cleaner World as a classic example  
- ⚙️ Formulate a problem using state, actions, transitions, goal test, and cost  
- 🧠 Simulate agent behavior through diagrams or pseudocode  

---

## 🧠 Part 1: Problem-Solving Agents

### 📘 Definition

> A problem-solving agent is a **goal-based agent** that decides what to do by **searching for a sequence of actions** that leads to desirable outcomes.

### 🧱 Architecture Overview

1. 👁️ Perceive the environment  
2. 🎯 Formulate a goal  
3. 📦 Formulate a problem  
4. 🔍 Search for a solution  
5. 🚀 Execute the plan  

### 🧩 Components of a Problem

| 🧩 Component         | 📖 Description                            |
|----------------------|--------------------------------------------|
| Initial State         | Starting situation of the agent           |
| Actions              | Legal moves from each state               |
| Transition Model     | How the environment evolves via actions   |
| Goal Test            | Checks whether the current state is a goal|
| Path Cost            | Cumulative cost of steps taken            |

🧪 **Mini Quiz #1**:  
*What is the purpose of the transition model in a problem-solving agent?*

---

## 🧽 Part 2: The Vacuum Cleaner World

### 🌍 World Description

- Environment consists of **two squares**: A and B  
- Each square can be **clean or dirty**  
- The agent can **move left, move right, or suck**

### 🎭 Environment Properties

| 📌 Property     | 🔍 Value            |
|----------------|---------------------|
| Observable     | Partially           |
| Deterministic  | Yes                 |
| Episodic       | No                  |
| Static         | Yes                 |
| Discrete       | Yes                 |

---

### 📋 PEAS Analysis

| 💠 Component   | 🧾 Description                      |
|---------------|-------------------------------------|
| Performance   | Clean all squares, minimize steps   |
| Environment   | Squares A and B                     |
| Actuators     | Left, Right, Suck                   |
| Sensors       | Location, square cleanliness status |

---

### 🎯 Problem Formulation

| 🧩 Element       | 📌 Example                              |
|------------------|------------------------------------------|
| Initial State    | (At A, A is dirty, B is dirty)           |
| Actions          | {Left, Right, Suck}                      |
| Transition Model | Changes location or cleanliness state    |
| Goal Test        | Both squares are clean                   |
| Path Cost        | 1 unit per action                        |

---

## 🔄 State Space Diagram (Simplified)

```python
        (A, dirty, dirty)
         /      |      \
    Suck  Right  NoOp
     |      |      |
(A, clean, dirty) → ...

```

---

📝 **Reflection Prompt**:  
Why is the environment partially observable, even though it’s small?

---

## ✏️ Classwork

✅ **Task 1**:  
Write the **state space** for all 8 possible configurations of the Vacuum World:
- 2 locations × 2² dirt states = 8 combinations

✅ **Task 2**:  
Formulate the vacuum cleaner problem as a formal search problem:
- Include initial state, goal state, action set, path cost

---

## 📝 Homework Assignment

📄 **Essay (1 page)**:  
*"How does the vacuum cleaner problem demonstrate classical search principles?"*

📖 **Reading**:  
Chapter 3 – *Solving Problems by Searching* (Russell & Norvig)

💻 **Optional Programming**:  
Simulate the vacuum cleaner agent in Python for all 8 states and record the number of steps to reach the goal.

---

## 🧠 Summary & Recap

- 🤖 **Problem-solving agents** plan actions to achieve goals using a search-based approach  
- 🧩 The world must be **formulated** with states, actions, and goals  
- 🧽 **Vacuum Cleaner World** is a simple but rich environment to understand AI principles  
- 🎯 Effective formulation helps agents act rationally within complex systems  
