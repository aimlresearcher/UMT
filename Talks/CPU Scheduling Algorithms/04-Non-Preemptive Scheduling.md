# 🧑‍🏫 Lecture: Non-Preemptive Scheduling Algorithms  
📚 Operating Systems – CPU Scheduling

## 🎯 Learning Objectives  
By the end of this section, students will be able to:

- Define non-preemptive scheduling.  
- Understand how different non-preemptive algorithms work.  
- Draw Gantt charts and calculate waiting & turnaround times.  
- Identify pros, cons, and use cases for each algorithm.  

---

## 🛑 4.1 What is Non-Preemptive Scheduling?  
**Definition:** Once a process is assigned the CPU, it runs to completion or until it voluntarily yields (e.g., requests I/O).  
The CPU will not be taken away even if a higher-priority process arrives.

### 🔁 Real-world analogy:  
Imagine someone using a shared printer – others must wait until they finish their full job.

---

## 📦 4.2 Algorithms Covered

- First-Come, First-Served (FCFS)  
- Shortest Job First (SJF) – Non-Preemptive  
- Priority Scheduling – Non-Preemptive  
- Highest Response Ratio Next (HRRN)  

---

### 🟢 4.2.1 First-Come, First-Served (FCFS)  
**Idea:** Serve processes in the order they arrive.  
**Data Structure:** FIFO queue.

#### 🔢 Example:

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 4     |
| P2      | 1       | 3     |
| P3      | 2       | 1     |

**Gantt Chart:** P1 → P2 → P3  
**Avg Waiting Time:** (0 + 3 + 5) / 3 = 2.67 ms

✅ **Pros:**  
- Easy to implement

❌ **Cons:**  
- Long processes delay short ones (convoy effect)

---

### 🟡 4.2.2 Shortest Job First (SJF) – Non-Preemptive  
**Idea:** Schedule the process with the shortest burst time.  
Requires knowledge of future burst times.

#### 🔢 Example:

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 6     |
| P2      | 1       | 4     |
| P3      | 2       | 2     |

**Gantt Chart:** P1 → P3 → P2  
(Since P1 is the only one at 0, we must start with it)

✅ **Pros:**  
- Minimizes average waiting time

❌ **Cons:**  
- Can cause starvation for long jobs  
- Needs burst time estimation

---

### 🔴 4.2.3 Priority Scheduling – Non-Preemptive  
**Idea:** CPU is given to the highest priority process.  
Lower value = higher priority (or vice versa, by design)

#### 🔢 Example:

| Process | Burst | Priority |
|---------|-------|----------|
| P1      | 4     | 2        |
| P2      | 3     | 1        |
| P3      | 1     | 3        |

**Gantt Chart:** P2 → P1 → P3

✅ **Pros:**  
- Gives control over scheduling order

❌ **Cons:**  
- Can cause starvation (if low-priority processes never get CPU)  
- **Solution:** Aging

---

### 🔵 4.2.4 Highest Response Ratio Next (HRRN)  
**Idea:** Balance between short and long processes using the formula:

$Response Ratio = (Waiting Time + Burst Time) / Burst Time$

Choose the process with the highest ratio.

#### 🔢 Example:

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 6     |
| P2      | 1       | 3     |
| P3      | 2       | 1     |

As time progresses:

- At t=0, only P1 is ready → schedule P1  
- At t=6, all are ready. Waiting times: P2 = 5, P3 = 4  
- Response Ratios:  
  - P2 = (5+3)/3 = 2.67  
  - P3 = (4+1)/1 = 5  
→ Choose P3

**Gantt Chart:** P1 → P3 → P2

✅ **Pros:**  
- Fair to all types of jobs  
- Prevents starvation

---

## 🧾 Summary Table

| Algorithm | Decision Factor         | Starvation Risk | Key Feature              |
|-----------|--------------------------|------------------|---------------------------|
| FCFS      | Arrival Time             | Low              | Simple FIFO               |
| SJF       | Shortest Burst Time      | High             | Optimal waiting time      |
| Priority  | Static Priority Value    | High             | Prioritized job execution |
| HRRN      | Highest Response Ratio   | Low              | Dynamic fairness          |

---

## ✏️ Class Activity

Provide a set of 3–4 processes with burst and arrival times.  
Ask students to:

- Draw Gantt charts for **FCFS** and **SJF**  
- Calculate **average waiting and turnaround time**  

---

## 📝 Homework

- Implement **FCFS** and **SJF** (Non-preemptive) in **Python or C++**  
- Analyze which algorithm performs better for your test data and why  
