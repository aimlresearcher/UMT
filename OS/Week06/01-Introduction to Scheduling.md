# Lecture: Introduction to Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the concept of scheduling in operating systems.  
- Differentiate between process scheduling and thread scheduling.  
- Learn about the types of scheduling algorithms.  
- Understand the key objectives of scheduling, including CPU utilization, fairness, and responsiveness.  
- Analyze how scheduling impacts system performance and user experience.

🧠 **1. What is Scheduling?**  
Scheduling is the process of deciding which task or process the CPU should execute at any given time. The operating system must allocate CPU time to processes, threads, and tasks efficiently and fairly to ensure optimal system performance.  

**Why Scheduling is Important:**  
- **CPU Utilization**: The goal of scheduling is to keep the CPU busy as much as possible to maximize CPU utilization.  
- **Fairness**: It ensures that all processes get a fair share of CPU time.  
- **Efficiency**: By determining the order in which processes or threads run, the operating system optimizes system throughput and response time.  
- **Responsiveness**: Scheduling affects the responsiveness of interactive systems, ensuring that high-priority processes (such as user inputs) are given immediate attention.  

🧠 **2. Types of Scheduling**  
Scheduling can be classified into different categories based on the scope of what is being scheduled and the algorithm used to decide the order of execution.

### 2.1 Process Scheduling  
Process scheduling refers to the allocation of CPU time among different processes.  
A process consists of an address space, resources, and one or more threads. Processes may be in different states, such as ready, waiting, or running.  
The operating system manages the process states and decides which process will execute next, based on factors such as priority, time quantum, and system load.

### 2.2 Thread Scheduling  
Thread scheduling refers to scheduling individual threads within a process.  
Threads are the smallest unit of execution within a process, and modern operating systems often have the ability to manage multiple threads per process.  
Thread scheduling involves managing the execution of threads across different CPU cores in multi-core systems.

### 2.3 CPU Scheduling  
CPU Scheduling is the method used by the operating system to decide which process or thread should execute on the CPU at any given time.  
CPU-bound tasks require a lot of processing time, while I/O-bound tasks spend most of their time waiting for input or output operations to complete.

🧠 **3. Scheduling Objectives**  
The main objectives of scheduling are:

### 3.1 CPU Utilization  
- **Goal**: Keep the CPU as busy as possible, ideally 100% of the time. However, a small percentage of idle time is acceptable.  
- High CPU utilization means that the CPU is being used efficiently, minimizing wasted time.

### 3.2 Throughput  
- **Goal**: Maximize the number of processes completed in a given time period.  
- Throughput is the number of processes completed per unit time, and increasing throughput improves system efficiency.

### 3.3 Turnaround Time  
- **Goal**: Minimize the turnaround time of processes.  
- Turnaround time is the total time a process spends in the system, from arrival to completion. Reducing turnaround time improves system performance and responsiveness.  
- **Formula**:  
  `TurnaroundTime = CompletionTime − ArrivalTime`

### 3.4 Waiting Time  
- **Goal**: Minimize the waiting time of processes.  
- Waiting time is the total time a process spends waiting in the ready queue before it gets CPU time. Reducing waiting time enhances system responsiveness.  
- **Formula**:  
  `WaitingTime = TurnaroundTime − BurstTime`

### 3.5 Response Time  
- **Goal**: Minimize the response time for interactive systems.  
- Response time is the time it takes for a system to respond to a user's request. This is particularly important in systems where user interaction is critical, such as in web servers or desktop applications.  
- **Formula**:  
  `ResponseTime = FirstResponseTime − ArrivalTime`

🧠 **4. Types of Scheduling Algorithms**  
There are different types of scheduling algorithms, each designed to achieve different scheduling objectives. The operating system selects an appropriate scheduling algorithm depending on the system type, workload, and performance requirements.

### 4.1 Non-Preemptive Scheduling Algorithms  
Non-preemptive scheduling means once a process starts executing, it runs to completion, and no process can interrupt it until it finishes.  

**Examples**:
- **First-Come, First-Served (FCFS)**: The first process to arrive is executed first.  
- **Shortest Job Next (SJN)**: The process with the shortest burst time is executed first.  
- **Priority Scheduling (Non-Preemptive)**: Processes are assigned priorities, and the highest priority process runs to completion before others.

### 4.2 Preemptive Scheduling Algorithms  
Preemptive scheduling means the operating system can interrupt a running process to allocate the CPU to another process.  

**Examples**:
- **Round Robin (RR)**: Each process gets a fixed time slice (quantum), and once its time expires, it is preempted and placed at the end of the ready queue.  
- **Preemptive Priority Scheduling**: The process with the highest priority is selected for execution. If a higher-priority process arrives, the current process is preempted.  
- **Shortest Remaining Time First (SRTF)**: Similar to SJN, but the process with the shortest remaining burst time is executed next, even if it preempts the current running process.

### 4.3 Hybrid Scheduling Algorithms  
Some systems combine different scheduling methods, for example, Multilevel Queue Scheduling, where processes are assigned to different queues based on their priority or type, and each queue can use a different scheduling algorithm.

🧠 **5. Factors Influencing Scheduling**

### 5.1 Context Switching  
Context switching is the process of saving the state of a currently running process and restoring the state of a new process. This is crucial in preemptive scheduling, where the OS switches between processes frequently.  
Frequent context switching can lead to overhead, as saving and restoring process states consumes time and resources.

### 5.2 CPU Bound vs I/O Bound Processes  
- **CPU-bound processes** require a lot of CPU time and perform calculations.  
- **I/O-bound processes** spend most of their time waiting for I/O operations (e.g., disk reads or network requests).  
Operating systems aim to balance these two types of processes to ensure that the CPU is fully utilized without overwhelming it with continuous I/O waiting processes.

### 5.3 Priorities  
- **Process Priority**: Some processes are more critical and need to be executed first. The operating system may assign higher priority to time-sensitive processes (e.g., real-time tasks) to ensure they complete on time.  
- **Aging**: In systems with priority-based scheduling, low-priority processes may be promoted to higher priority over time to prevent starvation (when a process is perpetually delayed).

✏️ **Classwork Exercises**:  
1. **Simulate a Scheduling Algorithm**:  
   Given the following processes with their arrival times and burst times, simulate **First-Come, First-Served (FCFS)** scheduling. Calculate waiting time, turnaround time, and average waiting and turnaround times.

   | Process | Arrival Time | Burst Time |
   | ------- | ------------ | ----------- |
   | P1      | 0            | 4           |
   | P2      | 1            | 3           |
   | P3      | 2            | 5           |
   | P4      | 3            | 2           |

2. **Compare Scheduling Algorithms**:  
   Write a comparison between **Round Robin (RR)** and **Shortest Job First (SJF)** based on CPU utilization, waiting time, and turnaround time. Discuss which algorithm would be more efficient in different scenarios (e.g., CPU-bound vs. I/O-bound processes).

📝 **Homework Assignments**:  
1. **Implement Scheduling Algorithms**:  
   Write a program in any language (C++, Python, Java) that simulates **Round Robin scheduling**. Implement the algorithm with a fixed time quantum, and calculate waiting time, turnaround time, and CPU utilization. Display the Gantt chart for each scheduling method.

2. **Real-World Scheduling Systems**:  
   Research and write a report on how modern operating systems (like Linux, Windows, or macOS) handle process and thread scheduling. Focus on how they balance system responsiveness, CPU utilization, and fairness.

3. **Performance Evaluation of Scheduling Algorithms**:  
   Implement **Priority Scheduling** (both preemptive and non-preemptive) and evaluate its performance against **Round Robin** in terms of waiting time and turnaround time using a set of diverse processes.

🧠 **Summary**  
Scheduling is a critical aspect of operating systems, ensuring efficient allocation of CPU time to processes and threads.  
Scheduling algorithms can be preemptive or non-preemptive, and they play a crucial role in optimizing system performance.  
The key goals of scheduling include CPU utilization, fairness, responsiveness, throughput, waiting time, and turnaround time.  
The choice of scheduling algorithm depends on the system's needs, whether it's an interactive system, a real-time system, or a batch processing system.
