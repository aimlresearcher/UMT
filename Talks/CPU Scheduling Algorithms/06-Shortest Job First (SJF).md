# 📉 4.2 Shortest Job First (SJF) – Non-Preemptive  
📚 Non-Preemptive Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this subsection, students will be able to:

- Understand the concept of **Shortest Job First (SJF)** scheduling  
- Apply **SJF (non-preemptive)** to solve process scheduling problems  
- Calculate **waiting time** and **turnaround time**  
- Identify the **strengths and limitations** of SJF  

---

## 🧠 What is SJF Scheduling?

**Definition:**  
In SJF scheduling, the process with the **shortest CPU burst time** is selected first from the ready queue.

- **Type:** Non-Preemptive  
(Once selected, the CPU is **not taken away** until the process finishes.)

---

## 📥 How It Works

- Among all **arrived processes**, select the one with the **shortest burst time**  
- Assign it the **CPU until it completes**  
- Repeat the process for the remaining **ready processes**

---

## ⚠️ Important Rule

SJF does **NOT always follow arrival time**.  
It waits until processes have **arrived** and chooses the **shortest** one among them.

---

## 🔢 Example

| Process | Arrival Time | Burst Time |
|---------|--------------|------------|
| P1      | 0            | 8          |
| P2      | 1            | 4          |
| P3      | 2            | 2          |
| P4      | 3            | 1          |

---

## ✅ Step-by-Step Execution

- At **time 0**, only **P1** has arrived → it runs first  
- After P1 finishes (**t=8**), all others are in the queue:  
  - P2 (BT=4), P3 (BT=2), P4 (BT=1)  
- Next shortest is **P4**, then **P3**, then **P2**

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

- Minimizes **average waiting time** (optimal in theory)  
- Efficient for **batch systems** where jobs are known in advance  

---

## ❌ Disadvantages

- **Starvation**: Long processes may never get scheduled  
- Difficult to **predict CPU burst time** in practice

---

## 🛠️ Solutions to Starvation

- 🧓 Use **Aging**: Gradually increase the **priority** of waiting processes  
- 🌀 Switch to **Multilevel Feedback Queues** or **hybrid algorithms**

---

## 📌 When to Use

- ✅ Ideal for systems where **burst times are predictable**  
- ❌ Not suitable for **interactive systems** or **real-time environments**

---

## ✏️ Class Activity

**Given:**

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 6     |
| P2      | 1       | 8     |
| P3      | 2       | 7     |
| P4      | 3       | 3     |

**Task:**  
- Perform **SJF non-preemptive scheduling**  
- Draw the **Gantt chart**  
- Calculate:  
  - **Waiting Time**  
  - **Turnaround Time**  
  - **Average values**

---

## 📝 Homework

- Write a **Python or C++** program to simulate **SJF (non-preemptive)**  
- Modify the program to show what happens to **waiting time** when the **longest job is at the front**
