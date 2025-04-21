# Lecture: Shortest-Job-First (SJF) Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the concept of Shortest-Job-First (SJF) scheduling in operating systems  
- Differentiate between Preemptive SJF (Shortest Remaining Time First - SRTF) and Non-preemptive SJF  
- Calculate important scheduling metrics such as waiting time, turnaround time, and CPU utilization for SJF  
- Compare the performance of SJF with other scheduling algorithms like FCFS and Round Robin  
- Implement and simulate SJF scheduling in programming languages  
- Understand the limitations and advantages of SJF in real-world systems

🧠 **1. Introduction to SJF Scheduling**  
Shortest-Job-First (SJF) is a CPU scheduling algorithm that selects the process with the shortest burst time (execution time) first. This method attempts to minimize the average waiting time and turnaround time by prioritizing short processes.

There are two versions of SJF:

- **Non-Preemptive SJF**: Once a process starts executing, it runs to completion. If a process is executing and a new process arrives with a shorter burst time, the new process must wait until the currently running process finishes.
- **Preemptive SJF (Shortest Remaining Time First - SRTF)**: If a new process arrives with a shorter burst time than the remaining time of the currently running process, the CPU is preempted and assigned to the new process.

**Key Features of SJF:**
- **Minimizes Waiting Time**: By executing the shortest jobs first, SJF helps minimize the overall waiting time.
- **Non-Preemptive**: In the non-preemptive version, processes run to completion once they start executing.
- **Optimality**: SJF minimizes the average waiting time for a given set of processes. It is considered optimal when compared to algorithms like FCFS or Round Robin.

🧠 **2. Preemptive vs Non-Preemptive SJF**  
### Non-Preemptive SJF:
- In this version of SJF, once a process starts executing, it runs until completion.
- If a process is executing and a new process arrives with a shorter burst time, the new process must wait in the queue.
- **Example**: If Process A is running and Process B arrives with a burst time of 2 units (while Process A’s burst time is 5 units), Process A will continue running until it completes, and then Process B will execute.

### Preemptive SJF (SRTF):
- In the preemptive version (Shortest Remaining Time First - SRTF), the system interrupts a running process if a new process arrives with a shorter remaining burst time.
- **Example**: If Process A is running with 4 units left and Process B arrives with a burst time of 2 units, Process A will be preempted, and Process B will execute first.

### Comparison:
- **Non-Preemptive SJF** is easier to implement and works well in systems where jobs have a fixed execution time.
- **Preemptive SJF** can be more complex to implement but provides more flexibility by allowing shorter jobs to execute immediately, reducing waiting time.

🧠 **3. Scheduling Metrics for SJF**  
### 3.1 Waiting Time  
Waiting time is the total time a process spends in the ready queue waiting for CPU time.

**Formula:**

$WaitingTime = TurnaroundTime - BurstTime$

### 3.2 Turnaround Time  
Turnaround time is the total time a process spends in the system, from its arrival to its completion.

**Formula:**

$TurnaroundTime = CompletionTime - ArrivalTime$

### 3.3 CPU Utilization  
CPU utilization refers to the percentage of time the CPU is actively processing tasks.

**Formula:**

$CPUUtilization = \frac{TimeCPUisBusy}{TotalTime} \times 100$

🧠 **4. Example of SJF Scheduling**  
Consider the following set of processes with arrival times and burst times:

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 6          |
| P2      | 1            | 8          |
| P3      | 2            | 7          |
| P4      | 3            | 3          |
| P5      | 4            | 4          |

### Non-Preemptive SJF:
1. **Sort processes by burst time.**
2. **Process P1** starts first and runs for 6 units of time.
3. **Process P4** has the shortest burst time of 3 and runs next.
4. After **P4** completes, the shortest remaining job is **P5**, then **P3**, and finally **P2**.

**Gantt Chart:**

```cpp
| P1 | P4 | P5 | P3 | P2 |
0    6    9    13   20   28
```
### Calculation of Waiting and Turnaround Times:
**Waiting Time:**

- P1: 0 (P1 starts at 0 and completes at 6)  
- P4: 3 (P4 starts at 6 and completes at 9)  
- P5: 5 (P5 starts at 9 and completes at 13)  
- P3: 8 (P3 starts at 13 and completes at 20)  
- P2: 12 (P2 starts at 20 and completes at 28)  

**Turnaround Time:**

- P1: 6 (P1 completes at time 6)  
- P4: 6 (P4 completes at time 9)  
- P5: 9 (P5 completes at time 13)  
- P3: 18 (P3 completes at time 20)  
- P2: 24 (P2 completes at time 28)  

**Average Waiting Time:**

$AverageWaitingTime = \frac{0 + 3 + 5 + 8 + 12}{5} = 5.6$

**Average Turnaround Time:**

$AverageTurnaroundTime = \frac{6 + 6 + 9 + 18 + 24}{5} = 12.6$

🧠 **5. Limitations of SJF**  
- **Starvation**: SJF can lead to starvation, where longer jobs keep waiting if there are continuous shorter jobs arriving. In this case, long processes may never get executed.  
- **Requires Knowledge of Burst Time**: SJF requires the knowledge of the burst time of the processes in advance, which is not always available in real-world systems.  
- **Complexity in Preemptive SJF (SRTF)**: Preemptive SJF can be difficult to implement because the operating system needs to handle process interruptions, making it more complex than non-preemptive algorithms.

✏️ **Classwork Exercises:**  
1. **Calculate the waiting time and turnaround time for the following set of processes using Non-Preemptive SJF:**

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 7          |
| P2      | 1            | 5          |
| P3      | 2            | 3          |
| P4      | 3            | 6          |
| P5      | 4            | 2          |

- Draw the Gantt chart and compute waiting time and turnaround time.

2. **Compare Preemptive SJF (SRTF) and Non-Preemptive SJF:**
   - Write a report that compares **Preemptive SJF (SRTF)** and **Non-Preemptive SJF** using a set of processes.
   - Include a discussion on when to use each version and their advantages and disadvantages.

📝 **Homework Assignments:**  
1. **Implement SJF Scheduling:**  
   Write a program in any language (C++, Python, Java) that simulates **SJF scheduling**. The program should take a list of processes with their arrival and burst times, and then calculate waiting time, turnaround time, and average times for both **Non-Preemptive** and **Preemptive SJF**.
   - Display the Gantt chart for each scheduling method.

2. **Starvation Problem:**  
   Research the issue of **starvation** in the SJF algorithm and suggest potential solutions to mitigate this problem. Provide real-world examples where starvation could occur.

3. **Comparison with FCFS:**  
   Compare **SJF** and **FCFS** algorithms by simulating the two on a set of processes. Calculate the waiting time, turnaround time, and CPU utilization for each algorithm. Discuss which algorithm would perform better in different scenarios, such as when all processes have similar burst times versus when burst times vary significantly.

🧠 **Summary**  
Shortest-Job-First (SJF) scheduling minimizes the waiting time and turnaround time by prioritizing processes with shorter burst times.  
Preemptive SJF (SRTF) allows more flexibility by preempting a process if a shorter job arrives.  
While SJF is optimal in minimizing average waiting time, it can suffer from starvation and requires knowledge of burst times, which may not always be available.  
Understanding the strengths and limitations of SJF helps in selecting the appropriate scheduling algorithm based on the system's requirements and workload characteristics.
