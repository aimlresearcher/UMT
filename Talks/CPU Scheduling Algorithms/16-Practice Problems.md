# 🧪 9. Practice Problems (In-Class)  
📚 Hands-on Exercise Section for Students

## 🎯 Learning Objectives

By solving these problems, students will:

- Apply **CPU scheduling algorithms** to real process data  
- Construct **Gantt charts** for various algorithms  
- Calculate:
  - **Completion Time**
  - **Turnaround Time = Completion – Arrival**
  - **Waiting Time = Turnaround – Burst**
  - **Response Time = First Execution – Arrival**
- Compare outcomes across **different scheduling strategies**

---

## 🧠 Instructions for Students

1. Read each scenario carefully  
2. Draw the **Gantt chart** for the given algorithm  
3. Calculate:
   - Completion Time  
   - Turnaround Time  
   - Waiting Time  
   - Response Time  
4. Discuss answers with peers for validation

---

## 🟢 Problem 1: FCFS Scheduling

| Process | Arrival Time | Burst Time |
|---------|--------------|------------|
| P1      | 0            | 5          |
| P2      | 2            | 3          |
| P3      | 4            | 1          |
| P4      | 6            | 4          |

**Task:**

- Use **First-Come, First-Served**  
- Draw **Gantt chart**  
- Calculate **average waiting** & **turnaround time**

---

## 🔵 Problem 2: SJF (Non-Preemptive)

| Process | Arrival Time | Burst Time |
|---------|--------------|------------|
| P1      | 0            | 6          |
| P2      | 1            | 8          |
| P3      | 2            | 7          |
| P4      | 3            | 3          |

**Task:**

- Use **Shortest Job First – Non-preemptive**  
- Draw **Gantt chart**  
- Compare results with **FCFS**

---

## 🔴 Problem 3: SRTF (Preemptive SJF)

| Process | Arrival Time | Burst Time |
|---------|--------------|------------|
| P1      | 0            | 8          |
| P2      | 1            | 4          |
| P3      | 2            | 2          |
| P4      | 3            | 1          |

**Task:**

- Use **Shortest Remaining Time First**  
- Carefully simulate **preemptions**  
- Calculate **average waiting time**

---

## 🟠 Problem 4: Round Robin

| Process | Arrival Time | Burst Time |
|---------|--------------|------------|
| P1      | 0            | 5          |
| P2      | 1            | 3          |
| P3      | 2            | 7          |
| P4      | 3            | 4          |

**Time Quantum = 2**

**Task:**

- Draw **Gantt chart**  
- Track **remaining time** after each cycle  
- Calculate all **performance metrics**

---

## 🟡 Problem 5: Preemptive Priority Scheduling

| Process | Arrival | Burst | Priority |
|---------|---------|-------|----------|
| P1      | 0       | 5     | 3        |
| P2      | 1       | 3     | 1        |
| P3      | 2       | 4     | 2        |
| P4      | 3       | 1     | 1        |

**Task:**

- Use **Preemptive Priority Scheduling**  
- (Lower number = higher priority)  
- Calculate **total number of context switches**

---

## 🟣 Problem 6: Multilevel Queue

**Queues:**

- Q0 (Priority 1, Round Robin, Q = 2)  
- Q1 (Priority 2, FCFS)

| Process | Queue | Arrival | Burst |
|---------|--------|---------|-------|
| P1      | Q0     | 0       | 4     |
| P2      | Q1     | 1       | 3     |
| P3      | Q0     | 2       | 2     |

**Task:**

- Simulate **queue behavior**  
- Ensure **Q0 always preempts Q1**  
- Track **time** and **queue transitions**

---

## 📋 Bonus Challenge: Design Scenario

Design a set of **4 processes** that:

- Performs **better on SJF** than FCFS  
- Causes **starvation** in **Priority Scheduling**

**Task:**

- Create Gantt charts  
- Show your **own calculations**

---

## ✏️ Wrap-Up Discussion Questions

- Which algorithm gives the **lowest waiting time** in your scenarios?  
- How does **preemption affect CPU responsiveness**?  
- When would you **not use Round Robin** in a real system?
