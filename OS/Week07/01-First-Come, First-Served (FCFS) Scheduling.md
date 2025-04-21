# Lecture: First-Come, First-Served (FCFS) Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the concept of First-Come, First-Served (FCFS) scheduling in operating systems  
- Analyze the advantages and disadvantages of FCFS  
- Calculate important scheduling metrics such as waiting time, turnaround time, and CPU utilization for FCFS  
- Implement and simulate FCFS scheduling in programming languages  
- Apply FCFS scheduling to solve practical problems

🧠 **1. Introduction to FCFS Scheduling**  
First-Come, First-Served (FCFS) is one of the simplest and most straightforward CPU scheduling algorithms. The main principle behind FCFS is that the process that arrives first gets executed first. This means that the processes are handled in the order in which they arrive, and there is no preemption.

**Key Features of FCFS:**  
- **Non-Preemptive**: Once a process starts executing, it runs until completion.  
- **Fairness**: Each process is executed in the order it arrives.  
- **Simplicity**: The algorithm is simple to implement and easy to understand.  

**How FCFS Works:**  
- The scheduler maintains a queue of processes.  
- When a new process arrives, it is added to the end of the queue.  
- The scheduler picks the process at the front of the queue and starts executing it.  
- The process continues until completion before moving to the next one.

🧠 **2. Advantages and Disadvantages of FCFS**  
**Advantages:**  
- **Simplicity**: FCFS is easy to understand and implement.  
- **Fairness**: All processes are treated equally, with no priorities.  
- **Predictable**: The order of execution is deterministic, based on arrival times.  

**Disadvantages:**  
- **Convoy Effect**: A process with a long burst time can delay the execution of shorter processes, leading to high waiting times for those processes. This can reduce overall system performance.  
- **Non-Optimal Performance**: FCFS does not prioritize processes based on their burst time, so it may not be the most efficient in terms of turnaround time and waiting time.  
- **Longer Processes can Block Shorter Ones**: The execution of longer processes in FCFS can lead to a situation where shorter processes are kept waiting for an extended period.

🧠 **3. Scheduling Metrics for FCFS**  
### 3.1 Waiting Time  
Waiting time is the amount of time a process spends waiting in the ready queue before it starts execution.  

**Formula:**

$WaitingTime = TurnaroundTime - BurstTime$

### 3.2 Turnaround Time  
Turnaround time is the total time spent by a process in the system, from the arrival of the process to its completion.  

**Formula:**

$TurnaroundTime = CompletionTime - ArrivalTime$

### 3.3 CPU Utilization  
CPU utilization is the percentage of time the CPU is actively processing tasks.  

**Formula:**

$CPUUtilization = \frac{TimeCPUisBusy}{TotalTime} \times 100$

🧠 **4. Example of FCFS Scheduling**  
Consider the following set of processes with their arrival and burst times:

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 4          |
| P2      | 1            | 3          |
| P3      | 2            | 5          |
| P4      | 3            | 2          |

**Steps:**  
- Sort the processes by arrival time (since FCFS schedules based on arrival).  
- Process P1 arrives at time 0 and runs for 4 units of time.  
- P2 arrives at time 1 but waits for P1 to finish.  
- After P1 completes, P2 starts and runs for 3 units of time, and so on.

**Gantt Chart:**

```cpp
| P1 | P2 | P3 | P4 |
0    4    7    12   14
```
### Calculation of Waiting and Turnaround Times:
**Waiting Time:**

- P1: 0  
- P2: 3 (P2 starts at 4 and completes at 7)  
- P3: 5 (P3 starts at 7 and completes at 12)  
- P4: 9 (P4 starts at 12 and completes at 14)  

**Turnaround Time:**

- P1: 4  
- P2: 6 (P2 completes at time 7, and arrived at time 1)  
- P3: 10 (P3 completes at time 12, and arrived at time 2)  
- P4: 11 (P4 completes at time 14, and arrived at time 3)  

**Average Waiting Time:**

$AverageWaitingTime = \frac{0 + 3 + 5 + 9}{4} = 4.25$

**Average Turnaround Time:**

$AverageTurnaroundTime = \frac{4 + 6 + 10 + 11}{4} = 7.75$

🧠 **5. Limitations of FCFS**  
- **Convoy Effect**: A process with a long burst time can cause a queue of short processes to wait.  
- **Non-Optimal Performance**: FCFS doesn't consider the burst time of the processes. If a short process arrives after a long process, it may have to wait a long time, which leads to poor turnaround time.

✏️ **Classwork Exercises:**  
1. **Calculate the waiting time and turnaround time for a given set of processes using FCFS.** Consider the following set of processes with arrival and burst times:

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 8          |
| P2      | 2            | 3          |
| P3      | 4            | 1          |
| P4      | 5            | 2          |

2. **Draw the Gantt chart for this scenario.**  
3. **Compute the waiting time, turnaround time, and average waiting and turnaround times.**

4. **Compare FCFS with Shortest Job First (SJF):**  
   - List the advantages and disadvantages of FCFS over SJF.  
   - Implement a simple simulation of both algorithms in a programming language of your choice and compare their performance with respect to turnaround time and waiting time.

📝 **Homework Assignments:**  
1. **Implementation Task:**  
   Write a program in any language (C++, Python, Java) that simulates FCFS scheduling. The program should take a list of processes with their arrival and burst times, and then calculate waiting time, turnaround time, and average times. Display the Gantt chart for each set of processes.

2. **Analyze and Improve:**  
   Research FCFS in the context of real-time systems. How would you improve the FCFS algorithm to avoid the convoy effect? Suggest any possible enhancements, such as the use of priority scheduling or another approach.

3. **Simulation of Multiple Scheduling Algorithms:**  
   Write a report comparing FCFS, Round Robin, and Shortest Job First (SJF) for a given set of processes. Simulate each scheduling algorithm and calculate the waiting time, turnaround time, and CPU utilization. Discuss which algorithm would perform better in different scenarios.

🧠 **Summary**  
FCFS is the simplest CPU scheduling algorithm, but it is not always the most efficient, particularly when there are processes with very different burst times.  
It suffers from the convoy effect, where a long process can delay the execution of shorter processes, leading to poor system performance.  
Understanding the pros and cons of FCFS is essential in designing scheduling algorithms that balance fairness and efficiency.
