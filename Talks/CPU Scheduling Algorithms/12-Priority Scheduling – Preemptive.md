# 🎖 5.3 Priority Scheduling – Preemptive  
📚 Preemptive CPU Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- Understand how **preemptive priority scheduling** works  
- Simulate **priority-based CPU scheduling** with preemption  
- Identify **pros and cons** of dynamic vs. static priorities  
- Calculate **waiting** and **turnaround times** using **Gantt charts**

---

## 🧠 What is Preemptive Priority Scheduling?

**Definition:**  
The CPU is assigned to the process with the **highest priority**.  
If a **new process** arrives with a **higher priority** than the currently running one, it **preempts** the CPU.

> Note: **Lower priority value = Higher importance** (e.g., priority 1 > priority 2)  
> **Type:** Preemptive  
> *(There is also a non-preemptive version discussed earlier)*

---

## 📥 How It Works

- Each process is assigned a **priority value**  
- The scheduler always selects the process with the **highest priority**  
- If a **new process** with **higher priority** arrives, it **preempts** the running process  
- **FCFS** is used to break ties between equal priorities

---

## ⚠️ Starvation Risk

- **High-priority processes** can delay **low-priority** ones indefinitely  
- 🛠️ **Solution: Aging**  
  → Gradually **increase the priority** of waiting processes over time

---

## 🔢 Example

| Process | Arrival | Burst | Priority |
|---------|---------|-------|----------|
| P1      | 0       | 7     | 3        |
| P2      | 2       | 4     | 1        |
| P3      | 4       | 1     | 2        |
| P4      | 5       | 2     | 1        |

---

## ✅ Step-by-Step Execution

- **Time 0:** P1 starts (only available)  
- **Time 2:** P2 arrives (priority 1) → preempts P1  
- **Time 4:** P3 arrives (priority 2) → ignored, P2 continues  
- **Time 5:** P4 arrives (priority 1) → preempts P2 if not done

---

## 🧮 Gantt Chart

```sql
| P1 | P2 | P4 | P2 | P3 | P1 |
0    2    5    7    8    9   13
```

**Explanation:**

- P1 runs for 2 units, then preempted by P2  
- P2 is preempted by P4 at time 5  
- P2 resumes after P4 finishes  
- Then P3 (short job), then P1 finishes last

---

## 📊 Calculations

| Process | Arrival | Burst | Completion | Turnaround | Waiting |
|---------|---------|-------|------------|------------|---------|
| P1      | 0       | 7     | 13         | 13         | 6       |
| P2      | 2       | 4     | 9          | 7          | 3       |
| P3      | 4       | 1     | 10         | 6          | 5       |
| P4      | 5       | 2     | 7          | 2          | 0       |

- **Average Waiting Time** = (6 + 3 + 5 + 0) / 4 = **3.5 ms**  
- **Average Turnaround Time** = (13 + 7 + 6 + 2) / 4 = **7 ms**

---

## ✅ Advantages

- Ensures **important/urgent tasks** are handled first  
- **Preemptive version** improves **response time** for high-priority processes  

---

## ❌ Disadvantages

- **Starvation** for low-priority processes  
- More **complex to implement**, especially with **dynamic priorities**

---

## 📌 Use Cases

- **Real-time systems** (e.g., alarms, emergency processes)  
- **Operating systems** managing background vs foreground tasks  
- **Mission-critical embedded systems** (e.g., automotive, medical)

---

## 🔄 Dynamic vs Static Priority

| Type   | Description                            | Example Use Case           |
|--------|----------------------------------------|----------------------------|
| Static | Fixed at process creation              | Batch processing           |
| Dynamic| Changes during execution (e.g., aging) | Real-time, adaptive systems|

---

## ✏️ Class Activity

**Given:**

| Process | Arrival | Burst | Priority |
|---------|---------|-------|----------|
| P1      | 0       | 4     | 2        |
| P2      | 1       | 3     | 1        |
| P3      | 2       | 2     | 3        |
| P4      | 3       | 1     | 1        |

**Tasks:**

- Simulate **Preemptive Priority Scheduling**  
- Draw the **Gantt chart**  
- Calculate **waiting** and **turnaround times**  
- **Discuss:** What happens if **aging is applied** (assume +1 priority every 2 ms)

---

## 📝 Homework

- Implement **Preemptive Priority Scheduling** in code  
- Simulate a scenario where **starvation occurs**, then apply **aging**  
- 🔍 **Research:** How does **Linux or Windows** manage **process priority and preemption**?
