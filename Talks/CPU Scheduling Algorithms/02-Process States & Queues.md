# 🧑‍🏫 Lecture: Process States & Queues

## 🎯 Learning Objectives

By the end of this section, students will be able to:

- 🧾 Describe the **different states** a process can be in  
- 🔄 Understand how processes **transition** between these states  
- 📋 Identify the role of various **process queues** (ready, I/O, job, etc.)  
- ⚙️ Explain how **process management** relates to **CPU scheduling**

---

## 🧠 2.1 What is a Process?

A **process** is a program **in execution**.  
It includes:

- 💾 **Program code** (instructions)  
- 🧠 **Current activity** (Program Counter, CPU registers)  
- 🧮 **Memory segments**: stack, heap, data  

When **multiple processes** exist, the **Operating System** must **track and manage** their states effectively.

---

## 🔄 2.2 Five-State Process Model

Most operating systems use a **five-state model** to represent a process’s life cycle:

| 🔢 **State**     | 📝 **Description**                                       |
|------------------|----------------------------------------------------------|
| 🆕 New            | Process is **being created**                            |
| 🟢 Ready          | Process is **loaded into memory** and **waiting for CPU** |
| 🔵 Running        | Process is **currently being executed** on the CPU      |
| 🟡 Waiting        | Process is **waiting for I/O** or other resources        |
| 🔴 Terminated     | Process has **finished execution**                      |
## 🔁 2.3 State Transition Diagram

```sql
     +-------+        admit         +--------+
     |  New  | ------------------→ |  Ready |
     +-------+                     +--------+
                                      |
                                      | dispatch
                                      ↓
                                  +--------+
                                  | Running|
                                  +--------+
                                   ↑     ↓
                    I/O complete   |     |  I/O request or event wait
                 +--------+       |     |       +--------+
                 | Waiting| ←-----+     +----→  |Waiting |
                 +--------+                     +--------+

                 ↑                                  ↓
           Terminate                             Exit
                 ↑                                  ↓
             +--------+                       +-----------+
             |Terminated|                    [Removed from system]
             +--------+
```
---
## 📦 2.4 Process Queues

To manage all active processes, the **Operating System (OS)** uses various **queues**:

---

### a) 📋 Ready Queue

- Holds all processes **waiting for CPU**
- Managed by the **short-term scheduler**
- Contains processes in the **Ready** state

---

### b) 💾 I/O Queue

- Holds processes **waiting for I/O** (e.g., disk, keyboard, network)
- These processes are in the **Waiting** (or **Blocked**) state

---

### c) 🗃 Job Queue

- Contains **all processes** in the system: new, ready, waiting, running
- Managed by the **long-term scheduler**

---

### d) 🧯 Device Queues

- Each I/O device (printer, disk, etc.) may have its own **queue** of waiting processes

---

## 🧵 2.5 Context Switching

When the **CPU switches** from one process to another:

- 🔒 The **state of the old process** must be **saved**  
- 🔓 The **state of the new process** must be **loaded**

This operation is called a **context switch**

⚠️ **Note:**  
Context switches introduce **overhead** — especially in **preemptive scheduling**, where they occur more frequently

---

## 📌 2.6 Multilevel Queue Model (Preview)

In some operating systems, there are **separate ready queues** for different types of processes:

- Foreground processes (interactive)  
- Background processes (batch jobs)

📍 This model is part of **multilevel scheduling**, which will be explored in a later section.

---

## 📊 Summary Table: States & Queues

| 🔄 **State**    | 🧑‍💼 **Managed By**         | ➡️ **Goes To**             |
|------------------|-----------------------------|-----------------------------|
| 🆕 New            | OS / Long-term Scheduler     | Ready                       |
| 🟢 Ready          | Short-term Scheduler         | Running                     |
| 🔵 Running        | CPU                          | Waiting or Terminated       |
| 🟡 Waiting        | I/O Subsystem                | Ready                       |
| 🔴 Terminated     | OS                           | Removed from system         |

---

## ✏️ Class Activity

1. 🎨 **Draw the Process State Transition Diagram**  
2. 🗣️ Ask students:  
   *"What happens if there’s **no context switch** at all in a system?"*

---

## 📝 Homework

1. ✍️ **Explanation Task:**  
Explain the difference between the **Ready Queue** and the **I/O Queue** using a **real-world analogy**.

2. 🔍 **Research Task:**  
Find out how many **threads/processes** your OS is currently managing:  
- Use **Task Manager** in Windows  
- Use `top` or `htop` in **Linux/macOS**

---

Let me know when you want to move on to **Scheduling Criteria** or need this exported into a handout/slide format!
