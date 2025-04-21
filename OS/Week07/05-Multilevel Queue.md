# Lecture: Multilevel Queue Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the concept of **Multilevel Queue Scheduling** in operating systems  
- Learn how processes are classified into different queues based on their characteristics  
- Understand the mechanics of scheduling across multiple queues  
- Learn how to implement and simulate **Multilevel Queue Scheduling**  
- Analyze the advantages and disadvantages of **Multilevel Queue Scheduling**  
- Discuss real-world applications of **Multilevel Queue Scheduling** in systems with diverse process types

🧠 **1. Introduction to Multilevel Queue Scheduling**  
**Multilevel Queue Scheduling (MLQ)** is a CPU scheduling algorithm where the ready queue is divided into multiple sub-queues, each representing a specific category of processes. Each queue has its own scheduling algorithm, and processes are assigned to a particular queue based on their properties.

**Key Features of Multilevel Queue Scheduling:**  
- **Multiple Queues**: Processes are divided into multiple queues, each with its own priority and scheduling algorithm.  
- **Fixed Queue Assignment**: A process is assigned to a specific queue based on certain characteristics (e.g., process type, priority, etc.). This classification is typically fixed, meaning that processes do not move between queues.  
- **Different Scheduling for Each Queue**: Different queues may use different scheduling algorithms. For example, one queue might use **FCFS (First-Come, First-Served)**, while another uses **Round Robin** or **Priority Scheduling**.  
- **Priority-Based Execution**: Each queue can have a different priority, and the CPU scheduler selects processes from the highest-priority queue.

**Example of Queue Classification:**

| Queue | Process Type           | Scheduling Algorithm |
|-------|------------------------|----------------------|
| Q1    | Real-time processes (highest priority) | Round Robin         |
| Q2    | Interactive processes  | FCFS or Priority Scheduling |
| Q3    | Batch processes (lowest priority) | Shortest Job First (SJF) |

🧠 **2. How Multilevel Queue Scheduling Works**  
**Process Classification**: Processes are classified into different queues based on certain characteristics like process priority, type (interactive, batch, real-time), and CPU burst time. Once a process is assigned to a queue, it stays in that queue for its entire lifecycle.

**Queue Scheduling:**  
- **Interactive processes** might be assigned to a queue that uses **Round Robin** scheduling to ensure fairness and responsiveness.  
- **CPU-bound processes** might be assigned to a queue with **FCFS** to prioritize simplicity and execution time efficiency.  
- **Batch processes** might use **SJF** for optimal completion time.

**Process Selection:**  
The CPU scheduler picks processes from the highest-priority queue first, based on the priorities of the queues. Within each queue, processes are scheduled according to the queue's assigned algorithm.

**Process Promotion/Demotion (Optional):**  
In some variants of MLQ, processes may be promoted or demoted between queues based on their behavior or aging. However, in the basic version of MLQ, processes do not move between queues.

**Example:**  
Consider the following system with three queues:

| Queue | Process Type           | Scheduling Algorithm |
|-------|------------------------|----------------------|
| Q1    | Real-time processes     | Round Robin         |
| Q2    | Interactive processes   | FCFS                |
| Q3    | CPU-bound processes     | FCFS or SJF         |

The system checks the highest-priority queue first. If Q1 is not empty, a process is picked from Q1 using **Round Robin** scheduling. If Q1 is empty, the scheduler moves to Q2, and if Q2 is empty, it moves to Q3.

🧠 **3. Scheduling Metrics for Multilevel Queue Scheduling**  
### 3.1 Waiting Time  
Waiting time is the time a process spends in the ready queue before execution.  

**Formula:**

$WaitingTime = TurnaroundTime - BurstTime$

### 3.2 Turnaround Time  
Turnaround time is the total time spent by a process in the system from arrival to completion.  

**Formula:**

$TurnaroundTime = CompletionTime - ArrivalTime$

### 3.3 CPU Utilization  
CPU utilization refers to the percentage of time the CPU is actively processing tasks.  

**Formula:**

$CPUUtilization = \frac{TimeCPUisBusy}{TotalTime} \times 100$

🧠 **4. Example of Multilevel Queue Scheduling**  
Consider a system with three queues:

| Process | Arrival Time | Burst Time | Queue | Scheduling Algorithm |
| ------- | ------------ | ---------- | ----- | -------------------- |
| P1      | 0            | 4          | Q1    | Round Robin          |
| P2      | 1            | 3          | Q2    | FCFS                 |
| P3      | 2            | 6          | Q3    | FCFS or SJF          |
| P4      | 3            | 5          | Q1    | Round Robin          |

**Queue Assignments:**  
- **Q1**: Real-time processes (priority 1) – **Round Robin** scheduling.  
- **Q2**: Interactive processes (priority 2) – **FCFS** scheduling.  
- **Q3**: Batch processes (priority 3) – **FCFS** or **SJF** scheduling.

**Steps:**  
The scheduler checks **Q1** (highest priority). If **Q1** is not empty, it picks a process from **Q1** using **Round Robin**.  
If **Q1** is empty, the scheduler checks **Q2**, and if **Q2** is empty, it moves to **Q3**.

**Execution Flow:**  
- **P1 (Q1)** starts first (using **Round Robin**).  
- **P2 (Q2)** starts next, as it is an interactive process (using **FCFS**).  
- **P3 (Q3)** is a CPU-bound process, and it will be scheduled after the interactive process completes.

**Gantt Chart:**

```cpp
| P1 | P2 | P3 | P1 | P3 | P4 |
0    4    7    13   16   22   27
```
### Calculation of Waiting Time and Turnaround Time:
**Waiting Time:**
- **P1**: 0 (P1 starts at 0 and completes at 4)  
- **P2**: 4 (P2 starts at 4 and completes at 7)  
- **P3**: 7 (P3 starts at 7 and completes at 13)  
- **P4**: 13 (P4 starts at 13 and completes at 16)  

**Turnaround Time:**
- **P1**: 4  
- **P2**: 6  
- **P3**: 11  
- **P4**: 14  

**Average Waiting Time:**

$AverageWaitingTime = \frac{0 + 4 + 7 + 13}{4} = 6$

**Average Turnaround Time:**

$AverageTurnaroundTime = \frac{4 + 6 + 11 + 14}{4} = 8.75$

🧠 **5. Advantages and Disadvantages of Multilevel Queue Scheduling**  
**Advantages:**  
- **Efficient Handling of Different Process Types**: MLQ allows different types of processes (interactive, real-time, batch) to be handled according to their specific needs.  
- **Customizable**: Each queue can use different scheduling algorithms, allowing for optimized handling of various workloads.  
- **Prioritization**: High-priority processes can be executed first, ensuring system responsiveness for real-time or interactive tasks.  

**Disadvantages:**  
- **Fixed Queue Assignment**: Once a process is assigned to a queue, it cannot move between queues. This rigid assignment may not work well for processes that change behavior over time.  
- **Starvation**: Processes in lower-priority queues may suffer from starvation if higher-priority queues always have processes to execute.  
- **Complexity**: Managing multiple queues with different scheduling algorithms can be complex to implement and maintain.  

✏️ **Classwork Exercises:**  
1. **Design a Multilevel Queue System:**  
   Create a system with 3 queues: one for real-time processes, one for interactive processes, and one for batch processes. Assign priority values and appropriate scheduling algorithms to each queue.  
   Simulate the execution of processes with varying burst times and arrival times, and calculate the waiting time, turnaround time, and CPU utilization.

2. **Compare with Other Scheduling Algorithms:**  
   Compare **Multilevel Queue Scheduling** with **Round Robin** and **Priority Scheduling** in terms of waiting time, turnaround time, and starvation. Discuss in which scenarios **MLQ** would perform better.

📝 **Homework Assignments:**  
1. **Implement Multilevel Queue Scheduling:**  
   Write a program in any language (C++, Python, Java) that simulates **Multilevel Queue Scheduling**. The program should allow multiple queues with different scheduling algorithms, and processes should be scheduled based on their type (real-time, interactive, batch).  
   Calculate and display the waiting time, turnaround time, CPU utilization, and response time.

2. **Starvation Mitigation:**  
   Investigate strategies to mitigate **starvation** in **Multilevel Queue Scheduling**. Suggest techniques like aging, where the priority of a process increases over time if it doesn't get executed.

3. **Real-world Applications of MLQ:**  
   Research and write about real-world systems or applications that use **Multilevel Queue Scheduling**, such as operating systems for servers, interactive systems, or real-time systems. Discuss the benefits and challenges of using **MLQ** in these contexts.

🧠 **Summary**  
**Multilevel Queue Scheduling** divides processes into different queues based on their characteristics and assigns different scheduling algorithms to each queue.  
It ensures that processes of different types (e.g., interactive, batch, real-time) are handled appropriately, improving system efficiency.  
One of the major issues with **MLQ** is **starvation**, where processes in lower-priority queues may never get executed.  
By understanding how **MLQ** works, students will be able to design more efficient and responsive scheduling systems tailored to different types of workloads.
