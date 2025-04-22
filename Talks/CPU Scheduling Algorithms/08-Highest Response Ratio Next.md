# ⚖️ 4.4 Highest Response Ratio Next (HRRN)  
📚 Non-Preemptive Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this subsection, students will be able to:

- Understand the concept of **HRRN scheduling**  
- Calculate the **response ratio** for each process  
- Apply **HRRN** to schedule processes and draw **Gantt charts**  
- Compare **HRRN** with **SJF** and **Priority Scheduling**

---

## 🧠 What is HRRN Scheduling?

**Definition:**  
HRRN is a **non-preemptive scheduling** algorithm that selects the process with the **highest response ratio** next.

### 🧮 Response Ratio Formula:

$Response Ratio = (Waiting Time + Burst Time) / Burst Time = 1 + (Waiting Time / Burst Time)$

The **longer** a process waits or the **shorter** its burst time, the **higher** its response ratio.

---

## 🚦 Why Use HRRN?

- Solves the **starvation problem** of SJF  
- Provides **balanced scheduling** between short and long jobs  
- **Dynamically adjusts priority** based on waiting time  

---

## 📥 How It Works

At each scheduling decision point:

1. Calculate the **response ratio** for all **ready processes**  
2. Select the process with the **highest response ratio**  
3. Run it to **completion** (non-preemptive)  
4. Repeat until all processes are completed

---

## 🔢 Example

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 8     |
| P2      | 1       | 4     |
| P3      | 2       | 2     |
| P4      | 3       | 1     |

---

## ✅ Step-by-Step Execution

- At **Time = 0**: Only **P1** has arrived → schedule P1  
- At **Time = 8**: All remaining processes are in the queue  

📊 Calculate response ratios:

- P2: (8–1 + 4)/4 = 11/4 = **2.75**  
- P3: (8–2 + 2)/2 = 8/2 = **4.00**  
- P4: (8–3 + 1)/1 = 6/1 = **6.00**

→ Choose P4 (highest RR), then repeat.

---

## 🧮 Gantt Chart

```sql
|   P1   | P4 | P3 | P2 |
0       8   9   11  15
```

---

## 📊 Calculations

| Process | Arrival | Burst | Start | Finish | Turnaround | Waiting |
|---------|---------|-------|-------|--------|------------|---------|
| P1      | 0       | 8     | 0     | 8      | 8          | 0       |
| P2      | 1       | 4     | 11    | 15     | 14         | 10      |
| P3      | 2       | 2     | 9     | 11     | 9          | 7       |
| P4      | 3       | 1     | 8     | 9      | 6          | 5       |

- **Average Waiting Time** = (0 + 10 + 7 + 5) / 4 = **5.5 ms**  
- **Average Turnaround Time** = (8 + 14 + 9 + 6) / 4 = **9.25 ms**

---

## ✅ Advantages

- Prevents **starvation** by favoring **long-waiting** processes  
- Improves **fairness** over SJF and static priority algorithms  
- Good **average turnaround and waiting time**

---

## ❌ Disadvantages

- Requires **calculation of response ratio** at each scheduling point  
- Slightly more **complex** than FCFS/SJF

---

## 🆚 Comparison with Other Algorithms

| Feature           | SJF         | Priority Scheduling | HRRN               |
|------------------|-------------|---------------------|--------------------|
| Starvation Risk  | High        | High                | Low                |
| Priority Basis   | Burst Time  | Static/Dynamic      | Dynamic (RR-based) |
| Aging Built-in   | ❌          | ❌                  | ✅                 |
| Fairness         | ❌          | ❌                  | ✅                 |

---

## ✏️ Class Activity

**Given:**

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 6     |
| P2      | 2       | 4     |
| P3      | 4       | 2     |
| P4      | 5       | 3     |

**Task:**

- Schedule using **HRRN**  
- Draw the **Gantt chart**  
- Calculate **turnaround** & **waiting time**  
- Observe **response ratios** at each decision point

---

## 📝 Homework

- Implement **HRRN** in **Python/C++**  
- Compare **HRRN vs SJF**:
  - Run both on the **same set of processes**  
  - Report:
    - 🟦 Gantt Charts  
    - 📊 Average Waiting Time  
    - ⚠️ Any Starvation Observed
