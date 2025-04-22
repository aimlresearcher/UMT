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
```sql
    +--------+           +-------+           +--------+         
    |  NEW   | --(Long)→ | READY | --(Short)→| RUNNING|         
    +--------+           +-------+           +--------+         
                            ↑                    ↓
                   (Medium Suspend)      (I/O wait, exit, etc.)
```
## ✅ Step 1: C++ Program – Add Two Numbers
```cpp
#include <iostream>
using namespace std;

int main() {
    int a, b, sum;
    cout << "Enter two numbers: ";
    cin >> a >> b;
    sum = a + b;
    cout << "Sum is: " << sum << endl;
    return 0;
}
```
---

### 💾 Saving the Program on Disk
- You write this code in a file: `add_numbers.cpp`  
- You compile it using: ```g++ add_numbers.cpp -o add_numbers``` 
- The output binary ```add_numbers.exe ``` (or just ``` add_numbers ``` ) is saved on disk

## 🧠 Applying OS Process States and Schedulers

Let’s simulate how the **Operating System** handles the execution of a C++ program (`add_numbers`) as a process.

---

### 🔁 Process State Transitions

| State              | Analogy in This Program                                                 |
|--------------------|-------------------------------------------------------------------------|
| **New**            | You execute `./add_numbers` → OS creates a new process                  |
| **Ready**          | OS allocates memory, I/O, etc. → Process enters the **ready queue**     |
| **Running**        | CPU starts executing `main()` → Program begins and prompts for input    |
| **Waiting (Blocked)** | Program waits for `cin` → User enters values (I/O wait)              |
| **Ready (again)**  | Input completed → Process returns to the ready queue                    |
| **Running**        | CPU resumes → Calculates sum and displays output                        |
| **Terminated**     | Program finishes → OS cleans up resources and removes process           |

---

### ⚙️ Schedulers in Action

| Scheduler                  | Role in This Program                                                                 |
|----------------------------|----------------------------------------------------------------------------------------|
| **Long-Term Scheduler**    | OS decides whether to **admit the job** (i.e., launch the program)                   |
|                            | If the system is overloaded, it may **delay or reject** the request                   |
| **Medium-Term Scheduler**  | If **RAM is full**, the OS may **suspend (swap out)** the process temporarily         |
|                            | It resumes the process when **resources are available**                               |
| **Short-Term Scheduler**   | Selects the process from the **ready queue** to assign the CPU                        |
|                            | May **preempt** it if a **higher-priority process** arrives                           |

---

### 📊 Full Analogy Flow

1. **You run the program** → OS admits the job → **New state**
2. **Memory & I/O allocated** → Job moves to **Ready**
3. **CPU executes** `main()` → **Running**
4. Program asks for input (`cin`) → **Waiting**
5. After input → Back to **Ready**
6. CPU resumes → **Running** → Calculates and displays sum
7. Execution ends → **Terminated**

## 📝 Summary Table

| Stage                | OS Concept       | C++ Program Behavior                          |
|----------------------|------------------|-----------------------------------------------|
| Program execution    | **New state**     | `add_numbers` is launched                     |
| Process waits in RAM | **Ready**         | Process is queued for CPU                     |
| CPU runs process     | **Running**       | Code executes, prompts for input              |
| Input from user      | **Waiting**       | `cin >> a >> b;` waits for keyboard input     |
| CPU resumes          | **Ready → Running** | After input, calculates and prints          |
| Finish               | **Terminated**    | Process ends, memory cleaned                  |

## ✅ Simple FCFS Scheduling Example

---

### 🔢 Given:

| Process | Arrival Time (AT) | Burst Time (BT) |
|---------|-------------------|-----------------|
| P1      | 0                 | 5               |
| P2      | 1                 | 3               |
| P3      | 2                 | 1               |

---

### 📊 Execution (FCFS Order: P1 → P2 → P3)

| Process | Start Time | Completion Time (CT) | Turnaround Time (TAT = CT - AT) | Waiting Time (WT = TAT - BT) | Response Time (RT = Start - AT) |
|---------|------------|----------------------|----------------------------------|-------------------------------|----------------------------------|
| P1      | 0          | 5                    | 5                                | 0                             | 0                                |
| P2      | 5          | 8                    | 7                                | 4                             | 4                                |
| P3      | 8          | 9                    | 7                                | 6                             | 6                                |

---

### 📈 Averages:

- **Average Turnaround Time** = (5 + 7 + 7) / 3 = **6.33 ms**  
- **Average Waiting Time** = (0 + 4 + 6) / 3 = **3.33 ms**  
- **Average Response Time** = (0 + 4 + 6) / 3 = **3.33 ms**

## 🔥 Challenging Example Dataset

### 📊 Given:

| Process | Arrival Time (AT) | Burst Time (BT) |
|---------|-------------------|-----------------|
| P1      | 0                 | 10              |
| P2      | 2                 | 1               |
| P3      | 4                 | 2               |
| P4      | 6                 | 1               |
| P5      | 8                 | 5               |

---

## ✏️ Tasks to Complete

### 🔹 1. Draw the **Gantt Chart** based on selected algorithm

---

### 🔹 2. Compute for Each Process:

- **Completion Time (CT)**  
- **Turnaround Time (TAT = CT - AT)**  
- **Waiting Time (WT = TAT - BT)**  
- **Response Time (RT = First Start Time - AT)**

---
# 🧠 Key Scheduling Terms Explained

---

## 1. 🕐 Arrival Time (AT)
**Definition:**  
The time at which a process enters the **ready queue** (i.e., becomes ready for execution).

**Example:**  
If Process P1 arrives at time **2**, then **AT = 2**

---

## 2. ⚙️ Burst Time (BT)
**Definition:**  
The total time required by the process to **execute on the CPU** (excluding any I/O wait time).

**Also Known As:**  
- Execution Time  
- CPU Time

---

## 3. ✅ Completion Time (CT)
**Definition:**  
The time at which a process **finishes its execution** completely.

**Example:**  
If Process P1 ends at time **10**, then **CT = 10**

---

## 4. 🔁 Turnaround Time (TAT)
**Definition:**  
The total time taken by a process from **arrival** to **completion**.

**Formula:**
$Turnaround Time (TAT) = Completion Time - Arrival Time$

---

## 5. ⌛ Waiting Time (WT)
**Definition:**  
The total time a process spends **waiting in the ready queue** (not executing on the CPU).

**Formula:**
$Waiting Time (WT) = Turnaround Time - Burst Time$

---

## 6. 🚦 Response Time (RT)
**Definition:**  
The time from **arrival** of the process to its **first execution** on the CPU.

**Formula:**
$Response Time (RT) = First CPU Start Time - Arrival Time$

---

## 🧾 Quick Example

| Process | Arrival Time (AT) | Start Time | Burst Time (BT) | Completion Time (CT) |
|---------|--------------------|------------|------------------|----------------------|
| P1      | 0                  | 2          | 5                | 7                    |

### Calculations:
- **TAT** = CT - AT = 7 - 0 = **7**  
- **WT**  = TAT - BT = 7 - 5 = **2**  
- **RT**  = Start - AT = 2 - 0 = **2**
---
## ✅ 1. FCFS – First-Come, First-Served

### 📝 Problem Statement:
A computer service center processes user support tickets on a first-come, first-served basis.  
Each ticket has a fixed amount of processing time. Once a ticket is started, it must be completed before the next one is handled.

### Ticket Information:

| Ticket ID | Arrival Time (AT) | Burst Time (BT) |
|-----------|--------------------|-----------------|
| T1        | 0                  | 6               |
| T2        | 2                  | 8               |
| T3        | 4                  | 7               |
| T4        | 5                  | 3               |
| T5        | 6                  | 5               |

### 📌 Task:
- Schedule the tickets using **FCFS**
- Calculate:
  - **Completion Time (CT)**
  - **Turnaround Time (TAT)**
  - **Waiting Time (WT)**
  - **Response Time (RT)**
  - **Average TAT**, **Average WT**, **Average RT**
- Draw a **Gantt Chart**

---

## ✅ 2. SJF – Shortest Job First (Non-Preemptive)

### 📝 Problem Statement:
A hospital lab processes diagnostic tests.  
The technician picks the **shortest test** (based on processing time) from those that have already arrived.  
Once started, a test **cannot be interrupted**.

### Test Information:

| Test ID | Arrival Time (AT) | Burst Time (BT) |
|---------|--------------------|-----------------|
| L1      | 0                  | 9               |
| L2      | 1                  | 4               |
| L3      | 2                  | 2               |
| L4      | 3                  | 5               |
| L5      | 4                  | 3               |

### 📌 Task:
- Schedule the tests using **SJF (non-preemptive)**
- Calculate:
  - **Completion Time (CT)**
  - **Turnaround Time (TAT)**
  - **Waiting Time (WT)**
  - **Response Time (RT)**
  - **Average TAT**, **Average WT**, **Average RT**
- Draw a **Gantt Chart**

---

## ✅ 3. Priority Scheduling – Non-Preemptive

### 📝 Problem Statement:
In an emergency dispatch system, incoming incidents are assigned a **priority value**  
(**1 = highest priority**).  
The dispatcher always selects the **highest priority case** among all that have arrived.

### Incident Data:

| Incident ID | Arrival Time (AT) | Burst Time (BT) | Priority |
|-------------|--------------------|-----------------|----------|
| I1          | 0                  | 4               | 2        |
| I2          | 1                  | 3               | 1        |
| I3          | 2                  | 6               | 4        |
| I4          | 3                  | 5               | 3        |
| I5          | 4                  | 2               | 1        |

### 📌 Task:
- Schedule the incidents using **Non-Preemptive Priority Scheduling**
- Calculate:
  - **Completion Time (CT)**
  - **Turnaround Time (TAT)**
  - **Waiting Time (WT)**
  - **Response Time (RT)**
  - **Average TAT**, **Average WT**, **Average RT**
- Draw a **Gantt Chart**
