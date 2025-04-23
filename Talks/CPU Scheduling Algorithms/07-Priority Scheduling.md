# 🎖 4.3 Priority Scheduling – Non-Preemptive  
📚 Non-Preemptive Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this subsection, students will be able to:

- Understand how **priority scheduling** works  
- Implement **priority-based scheduling** in a non-preemptive way  
- Calculate **waiting** and **turnaround times** for a set of processes  
- Identify the **pros and cons** of priority-based scheduling  

---

## 🧠 What is Priority Scheduling?

**Definition:**  
In Priority Scheduling, each process is assigned a **priority**, and the CPU is given to the process with the **highest priority**.

> In most implementations, **lower numbers = higher priority**  
> *(e.g., Priority 1 > Priority 2)*

- **Type:** Non-preemptive – once a process gets the CPU, it **runs until completion**

---

## 🧩 How It Works

- All **ready processes** are examined  
- The one with the **highest priority** is selected for execution  
- If multiple processes have the same priority, use **FCFS** as a tiebreaker

---

## ⚠️ Starvation Risk

- **Low-priority processes** may never execute if **high-priority ones** keep arriving  
- 🛠️ **Solution:** Use **Aging** (increase priority over time)

---

## 🔢 Example

| Process | Arrival Time | Burst Time | Priority |
|---------|--------------|------------|----------|
| P1      | 0            | 10         | 3        |
| P2      | 1            | 1          | 1        |
| P3      | 2            | 2          | 4        |
| P4      | 3            | 1          | 5        |
| P5      | 4            | 5          | 2        |

---

## ✅ Step-by-Step Execution

- At **time 0**, only **P1** is available → it starts  
- At **time 10**, all processes have arrived. Choose the one with the **highest priority** (lowest number):  
  P2 (1), P5 (2), P3 (4), P4 (5)

→ Schedule in this order: **P2 → P5 → P3 → P4**

---

## 🧮 Gantt Chart

```sql
|   P1   | P2 |   P5   | P3 | P4 |
0       10   11      16  18  19
```

---

## 📊 Calculations

| Process | Arrival | Burst | Priority | Start | Finish | Turnaround | Waiting |
|---------|---------|-------|----------|-------|--------|------------|---------|
| P1      | 0       | 10    | 3        | 0     | 10     | 10         | 0       |
| P2      | 1       | 1     | 1        | 10    | 11     | 10         | 9       |
| P5      | 4       | 5     | 2        | 11    | 16     | 12         | 7       |
| P3      | 2       | 2     | 4        | 16    | 18     | 16         | 14      |
| P4      | 3       | 1     | 5        | 18    | 19     | 16         | 15      |

- **Average Waiting Time** = (0 + 9 + 7 + 14 + 15) / 5 = **9 ms**  
- **Average Turnaround Time** = (10 + 10 + 12 + 16 + 16) / 5 = **12.8 ms**

---

## ✅ Advantages

- Gives preference to **important tasks**  
- Simple to implement if **priorities are known**

---

## ❌ Disadvantages

- **Starvation**: Low-priority processes may wait indefinitely  
- Requires **accurate priority assignment**, which may not be objective

---

## 💡 Real-World Examples

- OS scheduling **real-time tasks** (alarms, emergency apps) before background updates  
- Hospitals **triaging patients**: critical cases seen first

---

## ✏️ Class Activity

**Given:**

| Process | Arrival | Burst | Priority |
|---------|---------|-------|----------|
| P1      | 0       | 3     | 2        |
| P2      | 1       | 6     | 1        |
| P3      | 2       | 1     | 3        |
| P4      | 3       | 5     | 2        |

**Task:**

- Draw the **Gantt Chart**  
- Calculate **Waiting Time** and **Turnaround Time**  
- **Discuss:** How would the results change if **priorities were reversed**?

---

## 📝 Homework

- Implement **Priority Scheduling (non-preemptive)** in **Python or C++**  
- Apply **aging** in your code: increase a process’s priority by **1 every 5 units** of waiting time  
- 🔍 **Research:** How does your OS handle **priority scheduling internally**?
