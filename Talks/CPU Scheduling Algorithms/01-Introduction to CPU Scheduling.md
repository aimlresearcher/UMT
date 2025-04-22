# 🧑‍🏫 Lecture: Introduction to CPU Scheduling

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- 🧾 Define **CPU scheduling** and explain its **necessity**
- ⚙️ Understand the role of the **short-term scheduler**
- 🔁 Describe how **process states and queues** interact with CPU scheduling
- 📊 Appreciate the **impact of scheduling on system performance**

---

## 🧠 1.1 What is CPU Scheduling?

**📘 Definition:**  
CPU Scheduling is the process of determining **which process in the ready queue** will be assigned to the **CPU next**.

---

## ⚙️ 1.2 Why is CPU Scheduling Important?

In a **multiprogramming environment**, many processes may be in memory simultaneously, waiting for CPU time.  
The **CPU is a limited resource** — it can handle only one process at a time in a **single-core system**.

✅ **Efficient scheduling ensures:**

- 💡 Better CPU utilization  
- ⚡ Improved system responsiveness  
- ⚖️ Fair access for all processes  
- 🚀 Higher throughput  

---

## 🔄 1.3 Types of Schedulers in OS

| 🛠 **Scheduler Type** | 📋 **Function** |
|-----------------------|------------------|
| 🧭 Long-term          | Controls admission of new processes into the system (job scheduler) |
| ⚙️ Short-term         | Selects which ready process runs next on the CPU (**CPU scheduler**) |
| 🔁 Medium-term        | Temporarily removes/suspends processes to control multitasking load |

👉 **Focus here:** **Short-Term Scheduler (CPU Scheduler)**

---

## 📈 1.4 Role of the Short-Term Scheduler

- 🎯 Picks one process from the **ready queue**  
- 🖥 Allocates **CPU** to that process  
- ⏱ Happens **frequently** (every few milliseconds)  
- 🧩 Crucial in **time-sharing systems**  

---

## 📦 1.5 Process States Recap

Processes go through different states.  
Here's how **CPU scheduling** fits into the **process life cycle**:

```sql
New → Ready → Running → Waiting → Ready → Running → Terminated
```
 🔄 Transitions in Process States

- ✅ **Ready → Running:** CPU scheduler selects a process  
- 🔄 **Running → Waiting:** Process needs I/O  
- 🔁 **Running → Ready:** Process is **preempted** (interrupted and sent back to ready queue)  

---

## 🗃️ 1.6 Ready Queue

- 📋 Holds all **ready and waiting processes** for the CPU  
- ⚙️ Managed by the **short-term scheduler**  
- 🧮 Implemented using **queue data structures** such as:
  - FIFO (First-In-First-Out)  
  - Priority Queue  
  - Multilevel Queues  

---

## 💡 1.7 Real-World Analogy

Imagine a **help desk** environment:

- 👥 A line of students = **Ready Queue**  
- 🧑‍🏫 One assistant = **CPU**  
- 🧑‍🎓 Only one student is being helped = **Running**  
- 🧍‍♂️ Others waiting = **Ready**  
- 🎯 The assistant (short-term scheduler) decides **who gets help next** —  
  this is **CPU Scheduling in action**!

---

## 📊 1.8 Key Goals of CPU Scheduling

- 💻 **Maximize** CPU Utilization  
- ⌛ **Minimize** Waiting and Turnaround Times  
- ⚡ **Improve** Response Time (especially for interactive users)  
- ⚖️ **Ensure** Fairness among all processes  

---

## ✏️ Class Activity

**🗣 Discussion Prompt:**  
*"Why can’t all processes run at the same time?"*

**🤔 Think & Share:**  
*"In a real-time system (e.g., a heart monitor), what kind of scheduling is critical and why?"*

---

## 📝 Homework

1. ✍️ **Paragraph Task:**  
Write a short paragraph explaining how **poor CPU scheduling** can negatively impact **user experience** on a **shared server**.

2. 🔍 **Research Task:**  
Find out which **CPU scheduling algorithm** is used in **Linux or Windows**.  
Summarize how it works in **simple terms**.

