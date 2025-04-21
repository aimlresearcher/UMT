# Lecture: Scheduling Criteria - CPU Utilization, Throughput, Turnaround Time, Waiting Time, Response Time

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the various scheduling criteria used to evaluate the performance of scheduling algorithms.  
- Learn how to calculate CPU utilization, throughput, turnaround time, waiting time, and response time.  
- Understand how these criteria impact system performance and user experience.  
- Apply the criteria to real-world scheduling algorithms to evaluate their efficiency and suitability.

🧠 **1. Introduction to Scheduling Criteria**  
In an operating system, scheduling refers to the process of selecting which process or thread should be executed next. To evaluate the efficiency of various scheduling algorithms, we use several scheduling criteria. These criteria help determine how well the operating system is managing the CPU time among multiple processes and whether it meets the system’s performance requirements.

**Key Scheduling Criteria:**  
- **CPU Utilization**  
- **Throughput**  
- **Turnaround Time**  
- **Waiting Time**  
- **Response Time**  

Each of these criteria provides a different perspective on the system’s performance, and their values can help assess the effectiveness of a scheduling algorithm.

🧠 **2. CPU Utilization**  
**Definition:**  
CPU Utilization is a measure of how effectively the CPU is being used. The goal of scheduling is to maximize CPU utilization, ensuring that the CPU is as busy as possible and that resources are not wasted.

**Formula:**

$CPUUtilization = \frac{TimeCPUisBusy}{TotalTime} \times 100$

**Goal:**  
The aim is to keep CPU utilization close to 100%. However, a small amount of idle time is often acceptable to allow for system maintenance or minor tasks.

**Impact:**  
High CPU utilization generally means that the system is efficiently executing processes, while low CPU utilization suggests that the system may have idle resources, leading to potential performance inefficiencies.

🧠 **3. Throughput**  
**Definition:**  
Throughput is the number of processes that the system can complete in a given amount of time. This metric is used to measure the efficiency of the system in terms of how many tasks are completed in a fixed period.

**Formula:**

$Throughput = \frac{NumberofProcessesCompleted}{TimeInterval}$

**Goal:**  
The goal is to maximize throughput by minimizing the time it takes for processes to complete. High throughput means that the system is executing a large number of processes in a short amount of time.

**Impact:**  
High throughput indicates an efficient scheduling algorithm, especially in systems where processing large volumes of data or tasks is a priority. However, maximizing throughput may not always coincide with optimizing other metrics like waiting time or turnaround time.

🧠 **4. Turnaround Time**  
**Definition:**  
Turnaround Time is the total time taken from when a process arrives in the system to when it completes its execution. This metric includes the time spent waiting in the ready queue, as well as the actual execution time.

**Formula:**

$TurnaroundTime = CompletionTime - ArrivalTime$

**Goal:**  
The objective is to minimize turnaround time. Shorter turnaround times lead to a more responsive system, especially for batch processing systems.

**Impact:**  
Turnaround time is directly influenced by the waiting time of a process. Reducing waiting time generally helps reduce turnaround time. For systems that involve multiple processes, like in interactive environments, minimizing turnaround time is crucial to providing better user experiences.

🧠 **5. Waiting Time**  
**Definition:**  
Waiting Time is the total time a process spends in the ready queue waiting for CPU time. This metric is crucial because it measures the time a process has to wait before it begins execution.

**Formula:**

$WaitingTime = TurnaroundTime - BurstTime$

Where **Burst Time** refers to the time the process requires to complete its execution.

**Goal:**  
The aim is to minimize waiting time, as long waits for CPU time negatively impact system responsiveness.

**Impact:**  
High waiting times may indicate inefficiencies in scheduling, especially in systems with many competing processes. Reducing waiting time is crucial for interactive systems (e.g., web servers, desktop applications), where quick response times are vital.

🧠 **6. Response Time**  
**Definition:**  
Response Time is the time between submitting a request and the first response produced by the system. This is especially important for interactive processes, where users expect immediate feedback.

**Formula:**

$ResponseTime = FirstResponseTime - ArrivalTime$

**Goal:**  
The goal is to minimize response time to improve system interactivity and user satisfaction.

**Impact:**  
High response time can lead to poor user experiences, especially in real-time or interactive systems. In contrast to turnaround time, which measures the total time a process spends in the system, response time focuses on the initial feedback provided to the user.

🧠 **7. Example of Scheduling Criteria**  
Let’s consider a simple set of processes and calculate these criteria.

### Processes Information:

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 4          |
| P2      | 1            | 3          |
| P3      | 2            | 5          |
| P4      | 3            | 2          |

### Steps:  
**Gantt Chart (Using FCFS Scheduling):**  
- P1 starts at 0 and completes at 4.  
- P2 starts at 4 and completes at 7.  
- P3 starts at 7 and completes at 12.  
- P4 starts at 12 and completes at 14.

**Gantt Chart (FCFS Scheduling):**

```cpp
| P1 | P2 | P3 | P4 |
0    4    7    12   14
```
### Calculate Waiting Time:

P1: 0 (since P1 starts at 0 and completes at 4)  
P2: 3 (P2 starts at 4 and completes at 7)  
P3: 5 (P3 starts at 7 and completes at 12)  
P4: 9 (P4 starts at 12 and completes at 14)

**Average Waiting Time:**

\[
AverageWaitingTime = \frac{0 + 3 + 5 + 9}{4} = 4.25
\]

### Calculate Turnaround Time:

P1: 4 (P1 completes at 4, arrived at time 0)  
P2: 6 (P2 completes at 7, arrived at time 1)  
P3: 10 (P3 completes at 12, arrived at time 2)  
P4: 11 (P4 completes at 14, arrived at time 3)

**Average Turnaround Time:**

\[
AverageTurnaroundTime = \frac{4 + 6 + 10 + 11}{4} = 7.75
\]

### Calculate Response Time:

P1: 0 (P1 is the first process)  
P2: 3 (P2 arrives at 1 and starts at 4)  
P3: 5 (P3 arrives at 2 and starts at 7)  
P4: 9 (P4 arrives at 3 and starts at 12)

**Average Response Time:**

\[
AverageResponseTime = \frac{0 + 3 + 5 + 9}{4} = 4.25
\]

🧠 **8. Impact of Scheduling Algorithms on Criteria**  
Different scheduling algorithms impact these criteria in various ways. Here’s a general overview:

| Scheduling Algorithm | CPU Utilization | Throughput | Waiting Time | Turnaround Time | Response Time |
| -------------------- | --------------- | ---------- | ------------ | --------------- | ------------- |
| FCFS                 | Good            | Moderate   | High         | High            | High          |
| Round Robin (RR)     | High            | Moderate   | Moderate     | Moderate        | Moderate      |
| Priority Scheduling  | High            | Good       | Low          | Low             | Low           |
| Shortest Job First (SJF) | High         | High       | Low          | Low             | High          |

- **FCFS**: Can lead to long waiting times, especially for short processes after a long one (convoy effect).  
- **Round Robin**: Fairer but might reduce throughput if the time quantum is too small.  
- **Priority Scheduling**: Efficient for high-priority processes but may lead to starvation for lower-priority ones.  
- **Shortest Job First (SJF)**: Minimizes waiting and turnaround time but may not be optimal if burst times are not known in advance.

✏️ **Classwork Exercises:**  
1. **Calculate the scheduling criteria for the following set of processes using Shortest Job First (SJF) scheduling.** Consider arrival times and burst times and calculate waiting time, turnaround time, and response time.

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 5          |
| P2      | 1            | 3          |
| P3      | 2            | 4          |
| P4      | 3            | 2          |

2. **Experiment with Scheduling Algorithms:**  
   Compare **FCFS**, **Round Robin**, and **SJF** for a set of processes. Calculate the waiting time, turnaround time, CPU utilization, and throughput. Discuss which algorithm performs best for different types of workloads.

📝 **Homework Assignments:**  
1. **Simulate and Analyze Scheduling Algorithms:**  
   Write a program to simulate **Round Robin** and **FCFS** scheduling algorithms. Calculate and display waiting time, turnaround time, response time, and CPU utilization.

2. **Report on Scheduling Algorithms:**  
   Research and write a report on how **real-time systems** manage scheduling. Focus on how response time and turnaround time are critical in such systems and discuss how different scheduling algorithms are used.

🧠 **Summary**  
Scheduling criteria such as CPU utilization, throughput, waiting time, turnaround time, and response time provide key insights into how well an operating system handles process and thread scheduling.

Preemptive scheduling algorithms like Round Robin and priority scheduling provide flexibility and fairness, while non-preemptive algorithms like FCFS and SJF may improve efficiency at the cost of fairness or responsiveness.

Analyzing these criteria helps us choose the most appropriate scheduling algorithm for a given system or workload.
