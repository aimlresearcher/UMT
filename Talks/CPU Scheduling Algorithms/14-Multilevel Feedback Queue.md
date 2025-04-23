# 🔄 7. Multilevel Feedback Queue (MLFQ) Scheduling  
📚 Advanced Preemptive CPU Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- Understand the concept and **motivation** behind multilevel feedback queues  
- Explain how **MLFQ allows dynamic process movement**  
- Identify how different **scheduling rules** apply across multiple levels  
- Analyze the **trade-off** between **responsiveness** and **fairness**

---

## 🧠 What is Multilevel Feedback Queue Scheduling?

**Definition:**  
MLFQ is an advanced CPU scheduling algorithm that uses **multiple queues with different priorities**, allows **processes to move between queues**, and adjusts scheduling based on **process behavior**.

### 🎯 Goal:  
Improve **responsiveness**, **fairness**, and **CPU utilization** by dynamically adapting to different process types (**CPU-bound vs. I/O-bound**)

---

## 📊 Key Differences vs. Multilevel Queue

| Feature            | Multilevel Queue | Multilevel Feedback Queue |
|--------------------|------------------|----------------------------|
| Queue Movement     | ❌ Fixed queues   | ✅ Processes can move up/down |
| Adaptability       | ❌ Static         | ✅ Dynamic                 |
| Starvation Control | ❌ Requires aging | ✅ Built-in feedback       |

---

## 🧩 How MLFQ Works

- Multiple **priority queues** (e.g., Q0, Q1, Q2...)  
- Each queue has a different **scheduling policy** (commonly **Round Robin** with increasing time quanta)  

### Common Rules (can vary):

- A **new process** starts in the **highest-priority queue**  
- If it **uses up its time quantum**, it's **demoted** to a lower queue  
- If it **blocks or finishes early**, it may stay in the same queue or get **promoted**  
- CPU **always serves higher-priority queues first**

---

## ⚙️ Example Setup

| Queue | Priority | Algorithm     | Time Quantum |
|-------|----------|---------------|--------------|
| Q0    | High     | Round Robin   | 4 ms         |
| Q1    | Medium   | Round Robin   | 8 ms         |
| Q2    | Low      | FCFS          | ∞            |

---

## 🔢 Example Simulation

### Processes:

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 6     |
| P2      | 1       | 12    |
| P3      | 2       | 3     |

### Gantt Chart (Q0 = 4ms, Q1 = 8ms):

```sql
|P1|P2|P3|P1|P2|P2|
0   4  8  11 13 17 25
```

### Process Behavior:

- P1 uses 4ms in Q0 → goes back to Q0 and finishes  
- P2 uses 4ms → **demoted** to Q1  
- P3 uses 3ms → **completes** in Q0 (I/O-bound = rewarded)  
- P2 runs in Q1 for 8ms → **completes**

---

## 📌 Benefits

✅ **Dynamic adjustment** based on CPU behavior  
✅ Helps **I/O-bound processes** get quick responses  
✅ Controls **starvation** automatically via **promotion/demotion**  
✅ Maintains **fairness** without sacrificing responsiveness

---

## ❌ Limitations

❌ **Complex** to implement and tune  
❌ Requires **careful parameter tuning** (queue count, quantum size)  
❌ Can still **favor short jobs** if not well-balanced

---

## 🧮 Metrics You Can Track

- Total **context switches**  
- Number of **promotions/demotions**  
- **Queue occupancy** over time  
- **Turnaround** and **waiting times** per level

---

## 💡 Real-World Use

- **Windows NT/XP/Vista**  
- **Linux CFS** (conceptually similar)  
- **Real-time kernels** and high-performance systems

---

## ✏️ Class Activity

**Queue Config:**

- Q0: RR (4ms)  
- Q1: RR (8ms)  
- Q2: FCFS (∞)

### Processes:

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 5     |
| P2      | 1       | 15    |
| P3      | 2       | 2     |

**Tasks:**

- Simulate **MLFQ behavior** with **promotions/demotions**  
- Draw the **Gantt chart**  
- Count **context switches**  
- Analyze **which queue each process ends in**

---

## 📝 Homework

- Simulate **MLFQ** with **at least 4 processes** and **3 queues** in **Python/C++**  
- Create your own **rule set** for promotions/demotions  

### 📌 Reflection:

- Does your system **favor I/O-bound jobs**?  
- How **fair** is the system to **long CPU-bound jobs**?
