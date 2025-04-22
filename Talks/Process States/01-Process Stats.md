# 🧠 What is a Process?

A **process** is a **program in execution**. It includes:

- 📄 **Program code**  
- 📊 **Data**  
- 🧠 **Execution context** (registers, program counter, etc.)  
- 🧰 **Stack**, **heap**, and **memory information**

When a program runs, it doesn't just execute line-by-line—it moves through multiple stages known as **process states**.

---

## 🔄 Primary Process States

### 1. **New**
- The process is being **created**
- Not yet in the **ready queue**
- OS is allocating **resources** for the process

---

### 2. **Ready**
- Loaded into **memory**  
- Waiting to be **assigned to CPU**  
- Stored in the **ready queue**

---

### 3. **Running**
- Process is actively using the **CPU**
- Only **one process per CPU core** (in single-core systems)

---

### 4. **Waiting (Blocked)**
- Process is waiting for an **event** (like I/O)  
- Cannot resume CPU execution until the event is done  
- Example: **Reading from disk**, **waiting for user input**

---

### 5. **Terminated (Exit)**
- Process has **finished execution**  
- OS releases all allocated **resources**  
- Removed from the **process table**

---

## 🔁 Process State Transition Diagram

```sql
 [New] 
   ↓ admit
[Ready] ←←←←←←←←←←←←
   ↓ dispatch         ↑ I/O complete
[Running] →→→→→→→→→→→→ [Waiting]
   ↓ exit                  ↑ I/O request
[Terminated]
```

### Transitions Explained:

- **New → Ready**: Admitted by the OS  
- **Ready → Running**: CPU scheduler dispatches it  
- **Running → Waiting**: Requests I/O or event  
- **Waiting → Ready**: I/O completes  
- **Running → Terminated**: Process ends normally  
- **Running → Ready** (*preemptive only*): Time slice ends or preemption occurs

---

## 📦 Additional States (in some OS designs)

| State      | Description                                                   |
|------------|---------------------------------------------------------------|
| Suspended  | Process is not eligible to run (e.g., swapped to disk)        |
| Zombie     | Process finished, but parent hasn’t acknowledged its exit     |

---

# 🍽️ Restaurant Analogy (Expanded)

| Process State | Restaurant Analogy                                                   |
|---------------|----------------------------------------------------------------------|
| **New**       | A customer walks into the restaurant.                                |
| **Ready**     | The customer is waiting for a table (they're in the waiting area).   |
| **Running**   | The customer is seated and eating (getting full service).            |
| **Waiting**   | The customer is waiting for the waiter to bring food/drink (I/O wait).|
| **Terminated**| The customer finishes and leaves the restaurant.                     |
| **Suspended** | The customer went to the bathroom or took a phone call mid-meal.     |
| **Zombie**    | The customer left but forgot to take the receipt—gone but still in records. |

---

# 🚌 Bus Ride Analogy

| Process State | Bus Ride Analogy                                      |
|---------------|--------------------------------------------------------|
| **New**       | You buy a ticket at the terminal.                      |
| **Ready**     | You’re waiting in line to board the bus.              |
| **Running**   | You’re on the bus and it’s moving toward destination. |
| **Waiting**   | The bus stops due to traffic or a red signal.         |
| **Terminated**| You get off the bus at your stop.                     |

---

# 🎮 Video Game Analogy

| Process State | Game Analogy                                                   |
|---------------|----------------------------------------------------------------|
| **New**       | Player clicks "Start Game" — game resources start loading.     |
| **Ready**     | Game has loaded and is waiting for the player to press "Play". |
| **Running**   | Player is actively playing the game.                           |
| **Waiting**   | Game is paused or loading the next level.                      |
| **Terminated**| Player quits the game or finishes the level.                   |

---

# 🏫 Classroom Analogy

| Process State | Classroom Analogy                                                  |
|---------------|---------------------------------------------------------------------|
| **New**       | A student enrolls in a course.                                      |
| **Ready**     | Student is waiting outside the classroom.                          |
| **Running**   | Student is in the class, actively participating.                   |
| **Waiting**   | Student is waiting while the teacher answers another question.     |
| **Terminated**| The student completes the class and leaves.                        |
# 🧠 What Is the Difference?  
**Preemptive vs. Non-Preemptive Scheduling**

---

## 🔁 Feature Comparison

| Feature              | Preemptive Scheduling                               | Non-Preemptive Scheduling                            |
|----------------------|-----------------------------------------------------|------------------------------------------------------|
| **CPU Control**       | CPU can be taken away from a running process        | CPU is never taken away until process finishes       |
| **Decision Points**   | Can occur anytime (e.g., new process arrives)       | Only when process finishes or blocks                 |
| **Context Switching** | Happens frequently                                  | Minimal context switching                            |
| **Responsiveness**    | High (great for interactive tasks)                  | Low (processes may wait long)                        |
| **Fairness**          | More fair (time slices, priority-based)             | Less fair (long jobs can block others)              |
| **Starvation Risk**   | Possible (low-priority processes can be delayed)    | Lower, but long jobs delay others                   |
| **Complexity**        | Higher (due to preemption logic)                    | Simpler implementation                               |
| **Examples**          | Round Robin, SRTF, Preemptive Priority              | FCFS, SJF (non-preemptive), HRRN, Non-preemptive Priority |

---

## 📥 Real-Life Analogies

### 🎮 Game Console Analogy
- **Preemptive**: A game is paused automatically if a high-priority **notification** or **call** comes in.  
- **Non-Preemptive**: You finish the entire **game level** before you can pause or switch.

---

### 🍕 Pizza Shop Analogy
- **Preemptive**: A **VIP customer** walks in, the chef **stops your order** to prepare theirs first.  
- **Non-Preemptive**: The chef **finishes your pizza first**, even if a VIP arrives later.

---

### 🚦 Traffic Light Analogy
- **Preemptive**: Traffic lights can **change early** to let an **ambulance** pass.  
- **Non-Preemptive**: All cars **wait the full cycle**, regardless of who’s waiting.

---

## 🧪 Quick Example

### Scenario:

| Process | Arrival | Burst |
|---------|---------|-------|
| P1      | 0       | 5     |
| P2      | 1       | 2     |

#### 🔵 Non-Preemptive (FCFS):

- P1 starts at **0**, finishes at **5**  
- P2 starts at **5**, completes at **7**  

#### 🔴 Preemptive (SRTF):

- P1 starts at **0**  
- P2 arrives at **1** with shorter burst → **preempts P1**  
- P2 finishes at **3**  
- P1 resumes and completes at **8**

---

## ✅ Summary Table

| Aspect               | Preemptive              | Non-Preemptive           |
|----------------------|-------------------------|---------------------------|
| **Flexibility**       | High                    | Low                       |
| **Implementation**    | Complex                 | Simple                    |
| **System Suitability**| Real-time, interactive  | Batch, background jobs    |

# 🧠 What Is a Scheduler?

A **scheduler** is a component of the **operating system** responsible for selecting processes to move between different states (e.g., new, ready, running) and managing **CPU** and **memory resources**.

---

## 🛠️ Types of Schedulers

| Scheduler Type       | Also Known As      | Role                                              |
|----------------------|--------------------|---------------------------------------------------|
| **Long-Term Scheduler** | Job Scheduler       | Controls admission of processes into the system    |
| **Medium-Term Scheduler** | Swapper             | Controls suspension/resumption of processes        |
| **Short-Term Scheduler** | CPU Scheduler       | Selects which ready process gets the CPU next      |

---

## 1. 🟩 Long-Term Scheduler (Job Scheduler)

**Function:**  
- Decides which processes are admitted into the **ready queue** from the **job pool** (new → ready)

**Frequency:**  
- Runs **infrequently**, typically when a **new job** arrives

**Goal:**  
- Maintain balance between **CPU-bound** and **I/O-bound** processes  
- Ensure efficient use of system resources

**Analogy:**  
- A **club bouncer** deciding who gets inside based on capacity and rules

---

## 2. 🟨 Medium-Term Scheduler (Swapper)

**Function:**  
- Temporarily **removes (swaps out)** processes from **memory**, placing them in **suspended** state

**Used in:**  
- **Multiprogramming** systems with **limited memory**

**Goal:**  
- Improve performance  
- Avoid **thrashing**

**Analogy:**  
- Asking guests to **wait outside** the restaurant temporarily when it's full

---

## 3. 🟥 Short-Term Scheduler (CPU Scheduler)

**Function:**  
- Selects a process from the **ready queue** to assign the **CPU**

**Frequency:**  
- Runs **very frequently** (every few milliseconds)

**Goal:**  
- Ensure **quick and efficient** CPU usage

**Analogy:**  
- A **cashier** calling the next customer in line

---

## 📊 Comparison Table

| Feature             | Long-Term          | Medium-Term       | Short-Term        |
|---------------------|--------------------|--------------------|--------------------|
| **Also Called**     | Job Scheduler       | Swapper            | CPU Scheduler       |
| **Controls Transition** | New → Ready     | Ready ↔ Suspended   | Ready → Running     |
| **Execution Frequency** | Infrequent      | Occasional         | Very Frequent       |
| **Objective**        | System load control | Memory optimization | CPU efficiency      |
| **Speed**            | Slow               | Medium              | Fast                |

---

## 📥 Visual Summary (Process Flow)

    +--------+           +-------+           +--------+         
    |  NEW   | --(Long)→ | READY | --(Short)→| RUNNING|         
    +--------+           +-------+           +--------+         
                            ↑                    ↓
                   (Medium Suspend)      (I/O wait, exit, etc.)
```