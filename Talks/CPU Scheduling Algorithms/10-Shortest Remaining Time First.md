# ⏳ 5.1 Shortest Remaining Time First (SRTF)  
📚 Preemptive Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this subsection, students will be able to:

- Understand how **SRTF (Shortest Remaining Time First)** works  
- Apply **SRTF** to solve scheduling problems  
- Calculate **waiting** and **turnaround times**  
- Compare **SRTF** with **SJF** and other algorithms  

---

## 🧠 What is SRTF?

**Definition:**  
SRTF is the **preemptive version** of **Shortest Job First (SJF)**.  
The CPU is always assigned to the process with the **shortest remaining burst time**.

**Behavior:**  
If a new process arrives with a **shorter remaining time** than the currently running one, the CPU is **preempted** and assigned to the new process.

---

## 📥 How It Works

1. Maintain a list of **processes** and their **remaining burst times**  
2. At **each time unit**:
   - Check which processes have **arrived**
   - Select the process with the **least remaining time**
   - **Switch the CPU** if necessary (preemption)

📢 **Note:**  
SRTF requires **continuous tracking** of process arrival and remaining time.  
It is ideal for **minimizing average waiting time**, but may cause **starvation** for long jobs.

---

## 🔢 Example

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 8     |
| P2      | 1       | 4     |
| P3      | 2       | 2     |
| P4      | 3       | 1     |

---

## ⏳ Step-by-Step Execution

- **Time 0**: Only P1 → Start P1  
- **Time 1**: P2 arrives (BT=4)  
  - Compare with P1 (RT=7) → P2 is shorter → Switch to P2  
- **Time 2**: P3 arrives (BT=2) → Switch to P3  
- **Time 3**: P4 arrives (BT=1) → Switch to P4  
- After P4 → Resume P3 → Then P2 → Then P1

---

## 🧮 Gantt Chart

```sql
|P1|P2|P3|P4|P3|P2|P2|P1|P1|P1|P1|
0  1  2  3  4  5  6  7  8  9 10 11
```

---

## 📊 Calculations

| Process | Arrival | Burst | Completion | Turnaround | Waiting |
|---------|---------|-------|------------|------------|---------|
| P1      | 0       | 8     | 11         | 11         | 3       |
| P2      | 1       | 4     | 7          | 6          | 2       |
| P3      | 2       | 2     | 5          | 3          | 1       |
| P4      | 3       | 1     | 4          | 1          | 0       |

- **Average Waiting Time** = (3 + 2 + 1 + 0) / 4 = **1.5 ms**  
- **Average Turnaround Time** = (11 + 6 + 3 + 1) / 4 = **5.25 ms**

---

## ✅ Advantages

- Provides **minimum average waiting time** (theoretically optimal)  
- Efficient in **batch systems** with short jobs

---

## ❌ Disadvantages

- **Starvation** for long processes  
- Requires **exact knowledge or estimation** of burst times  
- Frequent **context switches** add overhead

---

## 🆚 SRTF vs. SJF

| Feature           | SJF (Non-Preemptive) | SRTF (Preemptive)         |
|------------------|----------------------|----------------------------|
| CPU Preemption   | ❌ No                | ✅ Yes                     |
| Scheduling Point | Arrival only         | Every time unit            |
| Starvation Risk  | High                 | Higher                     |
| Avg. Wait Time   | Low                  | Lowest (optimal)           |

---

## ✏️ Class Activity

**Simulate the following in SRTF:**

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 6     |
| P2      | 1       | 2     |
| P3      | 2       | 4     |
| P4      | 3       | 1     |

**Task:**  
- Draw the **Gantt chart**  
- Calculate **average waiting** and **turnaround time**  
- Compare with **FCFS** and **SJF** results for the same input

---

## 📝 Homework

- Write a **program** to simulate **SRTF** using a **priority queue or min-heap**  
- Modify the program to **track context switch count**  
- 🔍 **Research:** Why is **SRTF rarely used** in real-time systems despite its efficiency?
