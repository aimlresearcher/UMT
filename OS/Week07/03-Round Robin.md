# Lecture: Round Robin (RR) Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the concept of **Round Robin (RR)** scheduling in operating systems  
- Learn how to implement and simulate RR scheduling in real-world systems  
- Calculate key metrics such as waiting time, turnaround time, CPU utilization, and response time for **Round Robin**  
- Compare **Round Robin** scheduling with other algorithms like **FCFS** and **SJF**  
- Analyze the impact of time quantum on system performance  
- Identify the advantages and limitations of **Round Robin** scheduling

🧠 **1. Introduction to Round Robin Scheduling**  
Round Robin (RR) is a **preemptive** CPU scheduling algorithm where each process is assigned a fixed time slice (also called a time quantum). Processes are executed in a cyclic order, with each process getting an equal share of the CPU during its time slice. When a process's time slice expires, it is preempted and placed at the end of the ready queue, while the next process in the queue gets executed.

**Key Features of Round Robin:**  
- **Preemptive**: Processes are given a fixed time slice, after which the CPU is preempted and assigned to the next process in the queue.  
- **Fairness**: Every process gets an equal amount of CPU time in a cyclic manner, making it fair for all processes.  
- **Time Quantum**: The time slice or time quantum is a fixed duration. If a process does not complete within this time, it is preempted and put at the end of the ready queue.

🧠 **2. How Round Robin Scheduling Works**  
- The ready queue holds the processes that are ready to execute.  
- A **time quantum** is defined, which is the maximum time a process can run before being preempted.  
- The first process in the queue is executed for one time quantum.  
- If the process does not complete during its time slice, it is preempted and moved to the end of the queue.  
- The next process in the queue is given the CPU.  
- This continues cyclically until all processes are completed.

**Example:**  
Assume we have four processes with the following burst times:

| Process | Burst Time | Arrival Time |
| ------- | ---------- | ------------ |
| P1      | 5          | 0            |
| P2      | 3          | 1            |
| P3      | 8          | 2            |
| P4      | 6          | 3            |

Let the **time quantum** be 3 units.

**Steps:**
1. **P1** starts first and runs for 3 units (remaining burst time: 2).
2. **P2** runs next for 3 units (completes).
3. **P3** runs for 3 units (remaining burst time: 5).
4. **P4** runs for 3 units (remaining burst time: 3).
5. **P1** runs for its remaining 2 units (completes).
6. **P3** runs for 3 units (remaining burst time: 2).
7. **P4** runs for 3 units (completes).
8. **P3** runs for the final 2 units (completes).

**Gantt Chart:**

```cpp
| P1 | P2 | P3 | P4 | P1 | P3 | P4 | P3 |
0    3    6    9    12   14   17   20   22
```
🧠 **3. Scheduling Metrics for Round Robin**  
### 3.1 Waiting Time  
Waiting time is the total time a process spends waiting in the ready queue before it starts execution.  

**Formula:**

$WaitingTime = TurnaroundTime - BurstTime$

### 3.2 Turnaround Time  
Turnaround time is the total time spent by a process in the system, from the time it arrives to when it finishes execution.  

**Formula:**

$TurnaroundTime = CompletionTime - ArrivalTime$

### 3.3 CPU Utilization  
CPU utilization refers to the percentage of time the CPU is actively processing tasks.  

**Formula:**

$CPUUtilization = \frac{TimeCPUisBusy}{TotalTime} \times 100$

### 3.4 Response Time  
Response time is the time it takes for the system to start responding to a request, which is especially important for interactive processes.  

**Formula:**

$ResponseTime = FirstResponseTime - ArrivalTime$

🧠 **4. Example of Round Robin Scheduling**  
Consider the following set of processes with burst times:

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 5          |
| P2      | 1            | 3          |
| P3      | 2            | 8          |
| P4      | 3            | 6          |

Given: **Time quantum = 3 units.**

**Gantt Chart:**

```cpp
| P1 | P2 | P3 | P4 | P1 | P3 | P4 | P3 |
0    3    6    9    12   15   18   21   24
```
### Calculation of Waiting Time and Turnaround Time:  
**Waiting Time:**  
- **P1**: 3 (P1 completes at time 6, arrived at time 0)  
- **P2**: 2 (P2 completes at time 6, arrived at time 1)  
- **P3**: 10 (P3 completes at time 24, arrived at time 2)  
- **P4**: 9 (P4 completes at time 21, arrived at time 3)  

**Turnaround Time:**  
- **P1**: 6 (P1 completes at time 6)  
- **P2**: 5 (P2 completes at time 6)  
- **P3**: 22 (P3 completes at time 24)  
- **P4**: 18 (P4 completes at time 21)  

**Average Waiting Time:**

$AverageWaitingTime = \frac{3 + 2 + 10 + 9}{4} = 6$

**Average Turnaround Time:**

$AverageTurnaroundTime = \frac{6 + 5 + 22 + 18}{4} = 12.75$

🧠 **5. Advantages and Disadvantages of Round Robin**  
**Advantages:**  
- **Fairness**: Each process gets an equal share of the CPU.  
- **Simplicity**: The algorithm is simple and easy to implement.  
- **Preemptive**: Since it is preemptive, it ensures no process can monopolize the CPU for too long.  
- **Responsive**: Good for interactive systems, as it ensures that processes will be given CPU time regularly.  

**Disadvantages:**  
- **Time Quantum Selection**: The choice of time quantum can significantly affect performance. A large quantum reduces RR to FCFS, while a very small quantum leads to frequent context switching, which adds overhead.  
- **Not Optimal for All Processes**: RR is not the most efficient for CPU-bound tasks, as they may not complete in their allotted time quantum.  
- **Overhead**: Frequent context switches may lead to overhead, especially with a small time quantum.

✏️ **Classwork Exercises:**  
1. **Calculate the waiting time and turnaround time for the following set of processes using Round Robin scheduling (time quantum = 4):**

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 6          |
| P2      | 1            | 3          |
| P3      | 2            | 4          |
| P4      | 3            | 5          |

- Draw the Gantt chart and compute waiting time, turnaround time, and average waiting and turnaround times.

2. **Experiment with Different Time Quantums:**  
   Write a program that implements **Round Robin scheduling** and tests the performance with different time quantum values. Discuss how the choice of time quantum affects waiting time and turnaround time.

📝 **Homework Assignments:**  
1. **Implement Round Robin Scheduling:**  
   Write a program in any language (C++, Python, Java) that simulates **Round Robin scheduling**. The program should take a list of processes with their arrival and burst times, then calculate waiting time, turnaround time, CPU utilization, and response time. Display the Gantt chart for each scheduling method.

2. **Time Quantum Selection:**  
   Investigate the impact of **time quantum** on the performance of **Round Robin scheduling**. Experiment with various time quantum values and analyze the impact on waiting time, turnaround time, and context switching. Write a report on your findings.

3. **Comparison with Other Scheduling Algorithms:**  
   Compare **Round Robin** with **FCFS** and **SJF** using a set of processes. Discuss which algorithm is better suited for interactive systems, CPU-bound tasks, and systems with mixed workloads.

🧠 **Summary**  
**Round Robin (RR)** is a **preemptive** scheduling algorithm that allocates equal CPU time to each process in a cyclic order.  
The **time quantum** is a critical factor in determining how well RR performs. A well-chosen quantum improves performance, while a poor choice leads to inefficient CPU utilization.  
RR is particularly suited for **interactive systems**, where fairness and responsiveness are essential.  
**Context switching overhead** and the **time quantum selection** are key factors to consider when implementing and optimizing **RR scheduling**.
