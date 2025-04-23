# 🔁 5. Preemptive Scheduling Algorithms  
📚 Operating Systems – CPU Scheduling

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- Understand the concept of **preemptive scheduling**  
- Distinguish between **preemptive** and **non-preemptive** models  
- Apply common **preemptive algorithms** using **Gantt charts**  
- Evaluate the **pros and cons** of preemptive scheduling  

---

## 🧠 5.1 What is Preemptive Scheduling?

**Definition:**  
In **preemptive scheduling**, the CPU can be **taken away** from a running process if:

- A **higher-priority** process arrives  
- The **time slice (quantum)** expires  
- Another process becomes more **suitable** based on policy

### 📊 Comparison Table

| Feature       | Non-Preemptive         | Preemptive                   |
|---------------|------------------------|------------------------------|
| CPU Control   | Process runs to completion | CPU can be reassigned anytime |
| System Type   | Good for batch systems | Best for real-time, interactive |
| Complexity    | Low                    | Higher (context switching)   |
| Fairness      | May favor long processes | More responsive & balanced  |

---

## ⚙️ 5.2 Common Preemptive Algorithms

### 🔄 5.2.1 Shortest Remaining Time First (SRTF)

- Preemptive version of **SJF**  
- CPU is always assigned to the process with the **least remaining burst time**  
- Preempts current process if a **shorter job** arrives

---

### 🔁 5.2.2 Round Robin (RR)

- Each process gets a **fixed time quantum** (e.g., 4ms)  
- After quantum expires, the process **goes to the back** of the ready queue  
- Good for **time-sharing systems**

---

### 🎖 5.2.3 Priority Scheduling – Preemptive

- CPU is **preempted** if a **higher priority** process arrives  
- **Starvation** possible → solved by **aging**

---

## 📊 5.3 Comparison Table

| Algorithm | Preemptive? | Based On               | Ideal For             | Weakness         |
|-----------|-------------|------------------------|------------------------|------------------|
| SRTF      | ✅          | Shortest remaining time | Efficiency             | Starvation       |
| RR        | ✅          | Fixed time slices       | Interactive systems    | Context switching |
| Priority  | ✅          | Priority values         | Real-time scheduling   | Starvation       |

---

## 📈 5.4 Gantt Chart Sample (Round Robin)

### Processes:

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 5     |
| P2      | 1       | 3     |
| P3      | 2       | 1     |

- **Quantum = 2**

### Gantt Chart:

```sql
P1 → P2 → P3 → P1 → P2 → P1
0    2    4    5    7    8   9
```

---

## ✅ Advantages of Preemptive Scheduling

- Better **response time**  
- **Fairer** for all processes  
- Required for **real-time systems**

---

## ❌ Disadvantages

- Frequent **context switching**  
- Higher **overhead**  
- Harder to **implement**

---

## 📌 When to Use Preemptive Scheduling

- ✅ **Real-time** and **time-sensitive** applications  
- ✅ **Multi-user** and **interactive** systems  
- ✅ Where **responsiveness** > **throughput**

---

## ✏️ Class Activity

Given 3 processes with **burst** & **arrival times**, simulate:

- **SRTF**  
- **Round Robin** (quantum = 3)  

**Tasks:**

- Draw **Gantt charts**  
- Calculate **turnaround** and **waiting times**  
- Compare with **FCFS**

---

## 📝 Homework

- Implement **Round Robin** in **Python or C++**  
- Modify your **SJF implementation** to become **SRTF (preemptive)**  
- Compare **RR vs SRTF** on the same input:  
  - Analyze **waiting times**  
  - Count **context switches**  
  - Comment on **fairness**
