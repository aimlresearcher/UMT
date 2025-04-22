# 🧑‍🏫 Lecture: Scheduling Criteria (Evaluation Metrics)  
📚 **Operating Systems – CPU Scheduling**

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- 📐 Define the **key metrics** used to evaluate CPU scheduling algorithms  
- 🧠 Understand the **importance** of each metric in various system types  
- 🧮 Apply **formulas** to calculate scheduling performance (e.g., turnaround time, waiting time)  
- ⚖️ Compare algorithms based on these criteria  

---

## 🧠 3.1 Why Do We Need Scheduling Criteria?

Every scheduling algorithm must be **judged** on how well it:

- ⚙️ Utilizes CPU and system resources  
- 🧍‍♂️ Responds to users' needs  

📏 **Scheduling criteria** help us evaluate algorithm performance and determine which is best for different system types:
- 🖥️ Batch systems  
- 🕒 Real-time systems  
- 👨‍💻 Time-sharing systems  

---

## 📊 3.2 Key Scheduling Criteria

---

### 1. ⚙️ **CPU Utilization**

- 📖 **Definition:** Percentage of time the CPU is actively executing instructions (not idle)  
- 🎯 **Goal:** Maximize  
- 📉 **Typical Range:** 40% (light load) to 90% (heavy load), ideally **close to 100%**

---

### 2. 📈 **Throughput**

- 📖 **Definition:** Number of processes completed per unit time  
- 🎯 **Goal:** Maximize  

📌 **Example:**  
If 5 processes complete in 10 seconds:  
➡️ Throughput = `5 / 10 = 0.5 processes/sec`

---

### 3. ⏱️ **Turnaround Time**

- 📖 **Definition:** Total time from process **submission to completion**  
- 🧮 **Formula:**  
$Turnaround Time = Completion Time - Arrival Time$
- 🎯 **Goal:** Minimize  

---

### 4. ⏳ **Waiting Time**

- 📖 **Definition:** Total time a process **waits in the Ready Queue**  
- 🧮 **Formula:**  
$Waiting Time = Turnaround Time - Burst Time$
- 🎯 **Goal:** Minimize  

---

### 5. ⚡ **Response Time**

- 📖 **Definition:** Time from process **arrival to its first CPU execution**  
- 🧮 **Formula:**  
$Response Time = First Execution Time - Arrival Time$
- 🎯 **Goal:** Minimize (especially important in **interactive** systems)

---

## 🧮 3.3 Example Calculation: FCFS Scheduling

### Processes:

| 🆔 Process | 🕐 Arrival Time | 💥 Burst Time |
|-----------|----------------|----------------|
| P1        | 0              | 5              |
| P2        | 2              | 3              |
| P3        | 4              | 1              |

### Using **FCFS**, Gantt Chart:

```sql
P1 (0-5) → P2 (5-8) → P3 (8-9)
```
###  Calculations

### ✅ Turnaround Time:

- 🟢 P1: `5 - 0 = 5`  
- 🟡 P2: `8 - 2 = 6`  
- 🔵 P3: `9 - 4 = 5`

### ⏳ Waiting Time:

- 🟢 P1: `0` (no waiting, started immediately)  
- 🟡 P2: `6 - 3 = 3`  
- 🔵 P3: `5 - 1 = 4`

### 📊 Average Waiting Time:

$(0 + 3 + 4) / 3 = 2.33$

---

## 📌 3.4 Summary Table: Scheduling Criteria

| 🧠 **Criterion**       | 📐 **Formula**                          | 🎯 **Goal**      |
|------------------------|-----------------------------------------|------------------|
| ⚙️ CPU Utilization      | `Busy Time / Total Time`                | Maximize         |
| 📈 Throughput           | `Completed Processes / Time`            | Maximize         |
| ⏱️ Turnaround Time      | `Completion Time – Arrival Time`        | Minimize         |
| ⏳ Waiting Time         | `Turnaround Time – Burst Time`          | Minimize         |
| ⚡ Response Time        | `First CPU Allocation – Arrival Time`   | Minimize         |

---

## 🔁 3.5 Trade-offs Between Metrics

- 🔄 **Round Robin (RR)**:  
  ➕ Great **response time**  
  ➖ Higher **waiting time**

- ⏳ **Shortest Job First (SJF)**:  
  ➕ Best **average waiting time**  
  ➖ May cause **starvation** for longer jobs

- 🏷 **Priority Scheduling**:  
  ➕ Good **control over process order**  
  ➖ Can be **unfair without aging**

📌 **Conclusion:**  
👉 No **one algorithm** is best for **all scenarios**. Choice depends on **system goals** and **workload type**.

---

## ✏️ Class Activity

🧠 **Task:**  
Give students 3 small processes with **different burst times**.

**Steps:**

1. 🎨 Create Gantt Charts using **FCFS** and **SJF**  
2. 🧮 Calculate **Turnaround** and **Waiting Time**  
3. 🔍 Compare the results and discuss performance differences

---

## 📝 Homework

1. ✍️ **Theory Question:**  
Explain why **Response Time** is more important than **Turnaround Time** in systems like a **web browser** or **ATM**.

2. 🧪 **Practical Task:**  
Use any **online CPU scheduling simulator** (e.g., [CPU Scheduler Tool](https://cpucalc.com))  
Test at least **two algorithms** and **report your results**.

---

Let me know if you want this turned into **slides**, an **interactive worksheet**, or a **quiz** for students!
