# 🧱 6. Multilevel Queue Scheduling  
📚 Advanced CPU Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- Explain the concept of **multilevel queue scheduling**  
- Identify how different **queues are structured and prioritized**  
- Understand how **processes are classified** into queues  
- Compare **multilevel queue** with other scheduling techniques  

---

## 🧠 What is Multilevel Queue Scheduling?

**Definition:**  
Multilevel Queue Scheduling is a CPU scheduling strategy that **divides the ready queue into multiple separate queues**, each for a **specific type/class of process**.

- Each queue has its **own scheduling algorithm**  
- **Priority levels** are assigned among queues (**inter-queue scheduling**)

---

## 🗃️ Key Idea: Queue Separation

Each queue represents a **category of processes** such as:

- System processes  
- Interactive processes  
- Batch jobs  
- Background processes  

These queues are **strictly separated**—no process can **move between queues**.

---

## 📥 Queue Structure Example

| Queue Number | Queue Type        | Scheduling Algorithm | Priority   |
|--------------|-------------------|-----------------------|------------|
| Q0           | System Processes  | Round Robin (RR)      | Highest    |
| Q1           | Interactive Tasks | Round Robin (RR)      | Medium     |
| Q2           | Batch Jobs        | FCFS                  | Lowest     |

- A process in **Q0** will always **preempt** processes in **Q1** and **Q2**  
- Processes in **Q1** will preempt **Q2**, but **not Q0**

---

## ⚙️ Scheduling Levels

### Inter-queue Scheduling  
- Determines **which queue** to serve next  
- Usually based on **fixed priority** or **time slicing**

### Intra-queue Scheduling  
- Determines **which process within a queue** to serve  
- Can use **FCFS**, **SJF**, **RR**, etc.

---

## 🔢 Example Scenario

Queue Configuration:  
- Q0: System → Round Robin  
- Q1: User Foreground → Round Robin  
- Q2: Background/Batch → FCFS  

### Processes:

| Process | Queue | Arrival | Burst |
|---------|--------|---------|-------|
| P1      | Q0     | 0       | 4     |
| P2      | Q1     | 1       | 3     |
| P3      | Q2     | 2       | 5     |

**Priority:** Q0 > Q1 > Q2

---

## ✅ Gantt Chart

```sql
| P1 | P2 | P2 | P3 |
0    2    4    7   12
```

- P1 (Q0) runs first (RR quantum = 2) → preempts lower queues  
- Then P2 (Q1) in two slices  
- Finally P3 (Q2) runs FCFS after higher queues are empty

---

## 📊 Advantages

✅ **Segregation of workload**  
- Real-time, system-critical tasks are prioritized  

✅ **Custom scheduling per category**  
- Use different strategies per queue (e.g., RR for interactive, FCFS for batch)

---

## ❌ Disadvantages

❌ **Starvation risk** for lower queues  
- High-priority queues may prevent execution of low-priority ones  

❌ **Rigid structure**  
- No dynamic movement between queues → not adaptive

---

## 📌 Use Cases

- Early OS kernels (e.g., MS-DOS, early Unix)  
- Systems where **process categories are static and well-defined**  
- **Embedded or real-time** systems

---

## 🔁 Comparison with Multilevel Feedback Queue

| Feature                 | Multilevel Queue | Multilevel Feedback Queue |
|------------------------|------------------|----------------------------|
| Queue Movement         | ❌ Not allowed    | ✅ Allowed (based on behavior) |
| Scheduling Flexibility | Rigid            | Dynamic                   |
| Starvation Mitigation  | Manual (e.g., aging) | Built-in feedback logic |

---

## ✏️ Class Activity

**Given Setup:**

- Q0: Priority = 1, RR (quantum = 2)  
- Q1: Priority = 2, FCFS  
- Q2: Priority = 3, FCFS  

### Processes:

| Process | Queue | Arrival | Burst |
|---------|--------|---------|-------|
| P1      | Q1     | 0       | 4     |
| P2      | Q0     | 1       | 3     |
| P3      | Q2     | 2       | 2     |

**Tasks:**

- Simulate **Multilevel Queue Scheduling**  
- Draw the **Gantt chart**  
- Calculate **average waiting** and **turnaround times**

---

## 📝 Homework

- Create your own **3-queue system** and simulate it in **any programming language**  
- ✍️ **Short Note:**  
  “What challenges would occur if **processes needed to change queues dynamically**?”
