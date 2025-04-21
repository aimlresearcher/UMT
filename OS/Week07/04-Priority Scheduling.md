# Lecture: Priority Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the concept of **Priority Scheduling** in operating systems  
- Differentiate between **Preemptive** and **Non-preemptive** Priority Scheduling  
- Learn how to implement and simulate **Priority Scheduling**  
- Calculate important scheduling metrics such as waiting time, turnaround time, CPU utilization, and response time for **Priority Scheduling**  
- Analyze the impact of priority assignment on system performance  
- Identify the advantages and disadvantages of **Priority Scheduling**

🧠 **1. Introduction to Priority Scheduling**  
**Priority Scheduling** is a CPU scheduling algorithm where each process is assigned a priority value. The process with the highest priority is given the CPU first. Priority scheduling can be preemptive or non-preemptive depending on whether or not a running process can be interrupted by a higher-priority process.

- **Preemptive Priority Scheduling**: If a new process arrives with a higher priority than the currently running process, the CPU is preempted, and the new process is executed.
- **Non-Preemptive Priority Scheduling**: Once a process starts execution, it runs to completion, even if a new higher-priority process arrives.

**Key Features of Priority Scheduling:**  
- **Preemptive or Non-Preemptive**: Can be preemptive or non-preemptive depending on the design.  
- **Priority Assignment**: Each process is assigned a priority value (either high or low). Lower numerical values typically represent higher priorities.  
- **Fairness**: Not always fair, as processes with lower priority values may suffer from starvation, meaning they might never get executed if higher-priority processes keep arriving.

🧠 **2. How Priority Scheduling Works**  
**Assigning Priorities**: Each process is given a priority value, either by the user or the system. For example, you could assign a priority based on the process's importance, deadline, or other criteria.  
**Queue Management:**

- **Preemptive Priority Scheduling**: The scheduler constantly monitors for new processes and selects the process with the highest priority to execute. If a process with a higher priority arrives, the currently running process is preempted.  
- **Non-Preemptive Priority Scheduling**: The scheduler selects the highest-priority process to run. Once a process starts execution, it runs to completion before another process can be selected.

**Scheduling Process**: The process with the highest priority is executed first. If two processes have the same priority, **FCFS (First-Come, First-Served)** is usually applied as a tie-breaker.

**Example:**  
Consider the following set of processes with burst times and priority values (lower values indicate higher priority):

| Process | Arrival Time | Burst Time | Priority |
| ------- | ------------ | ---------- | -------- |
| P1      | 0            | 4          | 2        |
| P2      | 1            | 3          | 1        |
| P3      | 2            | 5          | 4        |
| P4      | 3            | 2          | 3        |

Priority 1: Highest priority  
Priority 4: Lowest priority

### Preemptive Priority Scheduling (with priority values):  
- **P1** starts first since it has the lowest priority value (highest priority).  
- **P2** has higher priority than **P1**, so it will preempt **P1** and execute first.  
- **P4** will execute next as it has a higher priority than **P1** but lower than **P2**.  
- After **P4**, the process with the next highest priority will execute, which is **P1**, and finally, **P3** will execute last.

🧠 **3. Scheduling Metrics for Priority Scheduling**  
### 3.1 Waiting Time  
Waiting time is the amount of time a process spends waiting in the ready queue before it starts executing.  

**Formula:**

$WaitingTime = TurnaroundTime - BurstTime$

### 3.2 Turnaround Time  
Turnaround time is the total time a process spends in the system, from arrival to completion.  

**Formula:**

$TurnaroundTime = CompletionTime - ArrivalTime$

### 3.3 CPU Utilization  
CPU utilization refers to the percentage of time the CPU is actively processing tasks.  

**Formula:**

$CPUUtilization = \frac{TimeCPUisBusy}{TotalTime} \times 100$

### 3.4 Response Time  
Response time is the time from when a request is made until the system starts responding. It is particularly important in interactive systems.  

**Formula:**

$ResponseTime = FirstResponseTime - ArrivalTime$

🧠 **4. Example of Priority Scheduling**  
Consider the following set of processes with burst times and priority values (preemptive):

| Process | Arrival Time | Burst Time | Priority |
| ------- | ------------ | ---------- | -------- |
| P1      | 0            | 4          | 2        |
| P2      | 1            | 3          | 1        |
| P3      | 2            | 5          | 4        |
| P4      | 3            | 2          | 3        |

**Steps (Preemptive):**  
- **P1** starts first as it has the highest priority (priority 2).  
- **P2** arrives at time 1 with priority 1, which is higher than **P1’s**, so **P1** is preempted, and **P2** runs first.  
- After **P2** completes, **P1** resumes (since it has the next highest priority).  
- After **P1** completes, **P4** with priority 3 executes.  
- Finally, **P3**, which has the lowest priority, executes last.

**Gantt Chart:**

```cpp
| P2 | P1 | P4 | P3 |
0    1    4    6    11   16
```
### Calculation of Waiting Time and Turnaround Time:
**Waiting Time:**

- **P1**: 1 (P1 starts at 1 and completes at 4)  
- **P2**: 0 (P2 starts at 1 and completes at 4)  
- **P3**: 9 (P3 starts at 11 and completes at 16)  
- **P4**: 3 (P4 starts at 6 and completes at 11)  

**Turnaround Time:**

- **P1**: 4 (P1 completes at time 4)  
- **P2**: 3 (P2 completes at time 4)  
- **P3**: 14 (P3 completes at time 16)  
- **P4**: 8 (P4 completes at time 11)  

**Average Waiting Time:**

$AverageWaitingTime = \frac{1 + 0 + 9 + 3}{4} = 3.25$

**Average Turnaround Time:**

$AverageTurnaroundTime = \frac{4 + 3 + 14 + 8}{4} = 7.25$

🧠 **5. Advantages and Disadvantages of Priority Scheduling**  
**Advantages:**  
- **High-priority Processes**: Priority scheduling ensures that high-priority processes get executed first, which is useful for real-time and time-critical systems.  
- **Flexibility**: It is flexible as priorities can be assigned based on various factors like process importance, urgency, or deadlines.  
- **Preemptive**: The preemptive version ensures better responsiveness, as higher-priority tasks can interrupt lower-priority ones.

**Disadvantages:**  
- **Starvation**: A process with a low priority may never get executed if high-priority processes keep arriving. This is called starvation.  
- **Non-Optimal**: In some cases, the algorithm may not always lead to an optimal average waiting time and turnaround time compared to other algorithms.  
- **Complexity**: The algorithm can be more complex to implement, especially in systems where priority needs to be dynamically reassigned.

✏️ **Classwork Exercises:**  
1. **Calculate the waiting time and turnaround time for the following set of processes using Priority Scheduling (preemptive):**

| Process | Arrival Time | Burst Time | Priority |
| ------- | ------------ | ---------- | -------- |
| P1      | 0            | 6          | 3        |
| P2      | 1            | 4          | 2        |
| P3      | 2            | 5          | 1        |
| P4      | 3            | 2          | 4        |

- Draw the Gantt chart and compute waiting time, turnaround time, and average waiting and turnaround times.

2. **Experiment with Non-Preemptive Priority Scheduling:**  
   Write a report comparing the **preemptive** and **non-preemptive** versions of **Priority Scheduling**. Simulate the scheduling using a set of processes and compute waiting time, turnaround time, and CPU utilization.

📝 **Homework Assignments:**  
1. **Implement Priority Scheduling:**  
   Write a program in any language (C++, Python, Java) that simulates **Priority Scheduling**. The program should take a list of processes with their arrival time, burst time, and priority, then calculate waiting time, turnaround time, CPU utilization, and response time. Display the Gantt chart for each scheduling method.

2. **Starvation in Priority Scheduling:**  
   Research the issue of **starvation** in **Priority Scheduling** and suggest ways to prevent it. Provide real-world examples where starvation could occur and how to address it.

3. **Comparison with Other Scheduling Algorithms:**  
   Compare **Priority Scheduling** (both preemptive and non-preemptive) with **Round Robin** and **Shortest Job First**. Discuss the advantages and disadvantages of each scheduling method in terms of waiting time, turnaround time, and response time.

🧠 **Summary**  
**Priority Scheduling** is a flexible algorithm that gives higher priority to processes that are more important or urgent.  
**Preemptive** and **non-preemptive** versions allow for responsiveness in different types of systems.  
One of the main drawbacks of **Priority Scheduling** is **starvation**, where low-priority processes may never get executed.  
Understanding the trade-offs of using **Priority Scheduling** is essential for selecting the best algorithm for a given set of processes or system requirements.
