# 🧭 4.1 First-Come, First-Served (FCFS)  
📚 Non-Preemptive Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this subsection, students will be able to:

- Describe the working of the **FCFS scheduling algorithm**  
- Apply FCFS to a given set of processes and draw a **Gantt chart**  
- Calculate **waiting time** and **turnaround time**  
- Identify **strengths and weaknesses** of FCFS  

---

## 🧠 What is FCFS Scheduling?

**Definition:**  
FCFS is the simplest non-preemptive scheduling algorithm where the **process that arrives first is scheduled first**.

### 🎟️ Analogy:  
Like people waiting in line at a bakery — whoever comes first gets served first.

### 📥 Queue Type:  
**FIFO (First-In-First-Out)**

---

## 📥 How It Works

- All processes are placed in a **queue based on arrival time**  
- The CPU is assigned to the **first process** in the queue  
- Once a process starts, it runs **until completion**  
- The **next process** in the queue is then scheduled, and so on  

---

## 🔢 Example

### Processes:

| Process | Arrival Time | Burst Time |
|---------|--------------|------------|
| P1      | 0            | 5          |
| P2      | 1            | 3          |
| P3      | 2            | 2          |

### Step 1: Sort by Arrival Time  
➡️ Already sorted: P1 → P2 → P3

### Step 2: Gantt Chart

```sql
| P1 | P2 | P3 |
0    5    8   10
```

### Step 3: Calculate Times

| Process | Arrival | Burst | Start | Finish | Turnaround | Waiting |
|---------|---------|-------|-------|--------|------------|---------|
| P1      | 0       | 5     | 0     | 5      | 5          | 0       |
| P2      | 1       | 3     | 5     | 8      | 7          | 4       |
| P3      | 2       | 2     | 8     | 10     | 8          | 6       |

- **Average Waiting Time** = (0 + 4 + 6) / 3 = **3.33 ms**  
- **Average Turnaround Time** = (5 + 7 + 8) / 3 = **6.67 ms**

---

## ✅ Advantages

- Simple and **easy to implement**  
- **Fair** in the order of arrival  

---

## ❌ Disadvantages

- **Convoy Effect**: A long process can delay all others  
- Poor **response time** in interactive systems  
- Not optimal in minimizing **waiting or turnaround time**  

---

## 📌 When to Use

- ✅ Suitable for **batch systems** where response time is not critical  
- ❌ Not ideal for **time-sharing** or **real-time systems**

---

## ✏️ Class Exercise

**Given:**

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 2     |
| P2      | 1       | 4     |
| P3      | 2       | 1     |
| P4      | 3       | 3     |

**Task:**  
- Draw the **Gantt chart**  
- Calculate **waiting** and **turnaround time**

---

## 📝 Homework

- ✍️ **Write a function** in **Python/C++** that:  
  - Accepts a list of processes with **arrival** and **burst times**  
  - Prints the **Gantt chart**  
  - Computes **waiting** and **turnaround time** for **FCFS**

- 💬 **Discussion Prompt:**  
  *How could a long process at the front of the queue affect system performance?*
