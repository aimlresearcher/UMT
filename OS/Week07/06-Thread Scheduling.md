# Lecture: Thread Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the concept of **Thread Scheduling** and its importance in modern operating systems  
- Learn how threads are scheduled by the operating system, and how this differs from process scheduling  
- Understand the distinction between **single-threaded** and **multi-threaded scheduling**  
- Learn about various **thread scheduling algorithms** such as Preemptive, Non-Preemptive, and Priority-based scheduling  
- Analyze the factors that influence thread scheduling, including CPU core availability, context switching, and synchronization  
- Discuss the advantages and challenges of **multithreading** and thread scheduling in real-world systems  

🧠 **1. Introduction to Thread Scheduling**  
**Thread Scheduling** refers to the method by which the operating system decides which thread will be executed on the CPU at any given time. It is a critical component in multithreaded applications where multiple threads share the CPU and execute concurrently.

**Key Concepts:**  
- **Thread**: A thread is the smallest unit of execution within a process. A process may consist of multiple threads that share the same resources but execute independently.  
- **Thread Scheduling**: The process of managing the execution of threads in a way that ensures fairness, responsiveness, and efficient CPU utilization.  
- **Thread vs Process**: While processes are independent entities with their own memory space, threads within a process share the same memory and resources.

**Why Thread Scheduling Matters:**  
- **Concurrency**: Multithreading allows for better concurrency in programs, especially on systems with multiple CPU cores.  
- **Performance Optimization**: Proper thread scheduling can improve application performance by maximizing CPU utilization and reducing idle time.  
- **System Responsiveness**: Thread scheduling ensures that interactive processes (such as UI threads) receive timely CPU time, providing a better user experience.  

🧠 **2. How Thread Scheduling Works**  
Thread scheduling involves determining which thread in a queue will be given access to the CPU. The operating system's scheduler typically decides the order of execution based on factors such as thread priority, time quantum, and the state of the threads (ready, waiting, etc.).

**Basic States of Threads:**  
- **Ready**: The thread is prepared to run but is waiting for CPU time.  
- **Running**: The thread is currently being executed on the CPU.  
- **Waiting**: The thread is waiting for a resource (e.g., I/O operations) or synchronization events (e.g., a mutex).  
- **Terminated**: The thread has completed its execution.

**Scheduling Policies:**  
- **Preemptive Scheduling**: In this type of scheduling, the operating system can interrupt a running thread to switch to another thread, based on factors like priority or time slice expiration.  
- **Non-Preemptive Scheduling**: In non-preemptive scheduling, a thread runs to completion before another thread is scheduled. The operating system does not interrupt the thread unless it voluntarily releases the CPU.

🧠 **3. Types of Thread Scheduling Algorithms**  
### 3.1 Preemptive Scheduling  
**Definition**: In preemptive scheduling, the operating system can interrupt a running thread to assign CPU time to another thread. This is especially important for interactive systems where responsiveness is critical.  
**Example**: Round Robin (RR) and Priority Scheduling are examples of preemptive thread scheduling. The operating system checks for a higher-priority thread and can preempt the current thread.

### 3.2 Non-Preemptive Scheduling  
**Definition**: In non-preemptive scheduling, once a thread starts execution, it runs until completion or voluntarily releases the CPU (e.g., when waiting for I/O).  
**Example**: First-Come, First-Served (FCFS) or Shortest Job Next (SJN) are non-preemptive scheduling algorithms, where threads that are running will not be interrupted by the scheduler.

### 3.3 Priority-based Scheduling  
**Definition**: Threads are assigned priority values, and the scheduler always selects the highest-priority thread to run. This can be either preemptive or non-preemptive.  
**Example**: In preemptive priority scheduling, a thread with a higher priority can interrupt the currently running lower-priority thread. In non-preemptive priority scheduling, once a thread starts, it runs to completion, even if a higher-priority thread arrives.

### 3.4 Multilevel Queue Scheduling  
**Definition**: Threads are placed into different queues based on their type or priority. Each queue has its own scheduling algorithm, and the scheduler selects threads from the highest-priority queue.  
**Example**: A system might have multiple queues for interactive, batch, and real-time threads, each using different scheduling strategies such as Round Robin or FCFS.

🧠 **4. Thread Scheduling Metrics**  
### 4.1 Waiting Time  
Waiting time is the time a thread spends in the ready queue before execution. Reducing waiting time improves system responsiveness.  

**Formula:**

$WaitingTime = TurnaroundTime - BurstTime$

### 4.2 Turnaround Time  
Turnaround time is the total time from when the thread arrives in the system to when it completes its execution.  

**Formula:**

$TurnaroundTime = CompletionTime - ArrivalTime$

### 4.3 CPU Utilization  
CPU utilization refers to the percentage of time the CPU is actively processing threads. Maximizing CPU utilization improves system performance.  

**Formula:**

$CPUUtilization = \frac{TimeCPUisBusy}{TotalTime} \times 100$

### 4.4 Response Time  
Response time is the amount of time from the initiation of a request to the system’s first response, especially important for interactive threads.  

**Formula:**

$ResponseTime = FirstResponseTime - ArrivalTime$

🧠 **5. Example of Thread Scheduling**  
Consider a system with 4 threads with different burst times and priorities:

| Thread | Arrival Time | Burst Time | Priority |
|--------|--------------|------------|----------|
| T1     | 0            | 4          | 2        |
| T2     | 1            | 3          | 1        |
| T3     | 2            | 5          | 3        |
| T4     | 3            | 2          | 4        |

**Scheduling Algorithm**: Preemptive **Priority Scheduling** (lower priority number indicates higher priority).  
**Time Quantum**: N/A since it's priority scheduling.

**Steps:**
- **T2 (priority 1)** runs first.
- **T1 (priority 2)** runs next.
- **T3 (priority 3)** runs next, as T3 has the next highest priority.
- **T4 (priority 4)** runs last.

**Gantt Chart:**
```cpp
| T2 | T1 | T3 | T4 |
0    3    6    11   13
```
### Calculation of Waiting Time and Turnaround Time:

**Waiting Time:**

- **T1**: 3 (T1 starts at time 3 and completes at time 6)
- **T2**: 0 (T2 starts at time 0 and completes at time 3)
- **T3**: 6 (T3 starts at time 6 and completes at time 11)
- **T4**: 9 (T4 starts at time 11 and completes at time 13)

**Turnaround Time:**

- **T1**: 6 (T1 completes at time 6)
- **T2**: 3 (T2 completes at time 3)
- **T3**: 11 (T3 completes at time 11)
- **T4**: 13 (T4 completes at time 13)

**Average Waiting Time:**

$AverageWaitingTime = \frac{3 + 0 + 6 + 9}{4} = 4.5$

**Average Turnaround Time:**

$AverageTurnaroundTime = \frac{6 + 3 + 11 + 13}{4} = 8.25$

🧠 **6. Advantages and Disadvantages of Thread Scheduling**

**Advantages:**  
- **Improved Responsiveness**: Preemptive scheduling can ensure that interactive threads receive prompt CPU time.  
- **Fairness**: Prioritizing threads based on their type or importance ensures that critical tasks get sufficient CPU time.  
- **Resource Efficiency**: Thread scheduling allows better utilization of system resources, especially in multicore systems.  

**Disadvantages:**  
- **Complexity**: Managing thread states, priorities, and preemption adds complexity to the operating system.  
- **Overhead**: Context switching between threads, especially in preemptive scheduling, can add significant overhead.  
- **Starvation**: In some cases, lower-priority threads may never get executed (especially in priority scheduling), leading to starvation.  
- **Deadlocks**: Improper synchronization and scheduling may lead to deadlocks in multi-threaded applications.  

✏️ **Classwork Exercises:**

1. **Simulate Thread Scheduling:**

   Given the following threads and their burst times, simulate **Priority Scheduling** (preemptive). Calculate waiting time, turnaround time, and average waiting and turnaround times.

   | Thread | Arrival Time | Burst Time | Priority |
   |--------|--------------|------------|----------|
   | T1     | 0            | 4          | 2        |
   | T2     | 1            | 3          | 1        |
   | T3     | 2            | 5          | 3        |
   | T4     | 3            | 2          | 4        |

2. **Multithreading in Practice:**

   Write a report explaining the challenges and benefits of **multithreading** in modern operating systems, with a focus on thread scheduling and its impact on performance.

📝 **Homework Assignments:**

1. **Implement Thread Scheduling:**

   Write a program in any language (C++, Python, Java) that simulates thread scheduling using preemptive **priority scheduling**. Implement the necessary data structures for thread management and calculate waiting time, turnaround time, and CPU utilization.

2. **Thread Synchronization:**

   Research the challenges of synchronization in multithreaded systems. Write a report explaining how mutexes, semaphores, and locks are used to manage thread access to shared resources. Discuss how synchronization issues can affect thread scheduling.

3. **Comparing Scheduling Algorithms:**

   Compare thread scheduling algorithms like **Preemptive Priority Scheduling**, **Round Robin**, and **FCFS**. Discuss how each algorithm behaves in different scenarios and evaluate their performance based on CPU utilization and waiting time.

🧠 **Summary**  
**Thread Scheduling** is a critical aspect of modern operating systems, ensuring that threads are executed efficiently and fairly.  
**Preemptive** and **non-preemptive** scheduling methods allow the OS to manage thread execution based on factors like priority, burst time, and responsiveness.  
Understanding scheduling metrics like waiting time, turnaround time, and CPU utilization helps in evaluating thread scheduling algorithms and optimizing system performance.  
Challenges such as context switching, starvation, and deadlocks highlight the complexities of managing multiple threads in a system.
