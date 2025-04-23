# 🔁 5.2 Round Robin (RR)  
📚 Preemptive Scheduling Algorithm

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- Understand the working of the **Round Robin** algorithm  
- Apply RR to schedule processes using a **fixed time quantum**  
- Draw **Gantt charts** and calculate **scheduling metrics**  
- Analyze the effect of different **quantum sizes** on performance  

---

## 🧠 What is Round Robin (RR) Scheduling?

**Definition:**  
Round Robin assigns a **fixed time quantum** to each process in the ready queue.  
When a process's time quantum expires, it is **preempted** and moved to the **end of the queue**.

### Key Concept:  
**Fairness** – every process gets an equal share of **CPU time**

- **Type:** Preemptive  

---

## 📥 How It Works

- Processes are placed in a **circular ready queue**  
- CPU is assigned to the process at the **front of the queue**  
- If the process **finishes before** its time quantum → Done  
- If **not** → it is **preempted** and added to the **back of the queue**  
- Repeat the cycle

---

## ⏱️ Time Quantum (Q)

A **critical parameter** in Round Robin:

| Quantum Size | Behavior                         |
|--------------|----------------------------------|
| Very Small   | Many switches, **high overhead** |
| Just Right   | Smooth execution, **good response** |
| Too Large    | Acts like **FCFS**               |

---

## 🔢 Example

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 5     |
| P2      | 1       | 3     |
| P3      | 2       | 1     |

- **Time Quantum (Q) = 2**

---

## ✅ Step-by-Step Execution

**Gantt Chart:**

```sql
| P1 | P2 | P3 | P1 | P2 | P1 |
0    2    4    5    7    8    9
```

**Explanation:**

- P1 runs for 2 units (RT: 3)  
- P2 runs for 2 (RT: 1)  
- P3 runs for 1 (done)  
- P1 resumes (RT: 1),  
- P2 completes,  
- P1 finishes

---

## 🧮 Calculations

| Process | Arrival | Burst | Completion | Turnaround | Waiting |
|---------|---------|-------|------------|------------|---------|
| P1      | 0       | 5     | 9          | 9          | 4       |
| P2      | 1       | 3     | 8          | 7          | 4       |
| P3      | 2       | 1     | 5          | 3          | 2       |

- **Average Waiting Time** = (4 + 4 + 2) / 3 = **3.33 ms**  
- **Average Turnaround Time** = (9 + 7 + 3) / 3 = **6.33 ms**

---

## ✅ Advantages

- **Fair**: All processes get CPU time  
- **Responsive**: Better for **interactive** and **time-sharing** systems  
- **Prevents starvation**

---

## ❌ Disadvantages

- Performance depends on **quantum size**  
- More **context switching** → higher overhead  
- Not ideal for **long batch processes**

---

## 📌 When to Use Round Robin

- ✅ **Time-sharing systems**  
- ✅ **Multi-user OS** (e.g., Windows, Linux shells)  
- ✅ **Interactive applications**

---

## ⚖️ Quantum Size Impact

| Quantum Size | Behavior                         |
|--------------|----------------------------------|
| Very Small   | Many context switches, high overhead |
| Just Right   | Smooth execution, fair CPU sharing  |
| Too Large    | Acts like FCFS (long wait times)     |

---

## ✏️ Class Activity

**Given the following processes and Q = 3:**

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 6     |
| P2      | 1       | 5     |
| P3      | 2       | 2     |

**Tasks:**

- Draw the **Gantt chart**  
- Calculate **waiting** and **turnaround time**  
- **Discuss:**  
  - What if **Q = 1**?  
  - What if **Q = 5**?

---

## 📝 Homework

- Implement **Round Robin** scheduling in **Python or C++**  
- Modify the **quantum** and observe changes in:
  - **Average waiting time**  
  - **Turnaround time**  
  - **Context switches**
