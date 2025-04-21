# Lecture: Preemptive Scheduling vs Non-Preemptive Scheduling

🎯 **Learning Objectives**  
By the end of this lecture, students will be able to:  
- Understand the difference between preemptive and non-preemptive scheduling.  
- Learn the characteristics of preemptive scheduling and non-preemptive scheduling.  
- Analyze the advantages and disadvantages of both scheduling approaches.  
- Compare the performance of preemptive and non-preemptive scheduling algorithms in terms of waiting time, turnaround time, CPU utilization, and response time.  
- Understand when to use each scheduling method depending on the system requirements.

🧠 **1. Introduction to Scheduling**  
In any operating system, the scheduler determines which process or thread will be executed by the CPU at any given time. Preemptive and non-preemptive scheduling are two primary types of scheduling techniques that define how the operating system allocates CPU time to processes.  

**Key Concepts:**  
- **Preemptive Scheduling**: The CPU can interrupt a running process to allocate time to another process based on factors like priority, time slice, or process arrival.  
- **Non-Preemptive Scheduling**: Once a process starts executing, it runs to completion, and no other process can interrupt it until it voluntarily releases the CPU (e.g., due to I/O completion or process termination).

🧠 **2. Preemptive Scheduling**  
**Characteristics of Preemptive Scheduling:**  
- **Interrupting Execution**: In preemptive scheduling, the operating system can interrupt a currently running process and assign the CPU to another process. This interruption may occur due to a higher-priority process arriving or because the process's time slice has expired.  
- **Time-sharing**: Preemptive scheduling allows for time-sharing of the CPU. It ensures that no process monopolizes the CPU for too long, improving system fairness and responsiveness.  
- **Higher Responsiveness**: Preemptive scheduling is especially beneficial in systems where responsiveness is critical, such as interactive or real-time systems.  

**Examples of Preemptive Scheduling Algorithms:**  
- **Round Robin (RR)**: Each process is assigned a fixed time slice or quantum. If the process doesn't complete in its time slice, it is preempted and placed at the end of the ready queue.  
- **Preemptive Priority Scheduling**: A process with a higher priority can preempt a currently running process with a lower priority.  
- **Shortest Remaining Time First (SRTF)**: A process with the shortest remaining burst time is selected for execution, preempting the current process if necessary.

**Advantages of Preemptive Scheduling:**  
- **Better Responsiveness**: Preemptive scheduling ensures that high-priority or interactive tasks are executed promptly, enhancing system responsiveness.  
- **Fairness**: It allows for better fairness, as no single process can monopolize the CPU for an extended period.  
- **Time Sharing**: Useful in systems that require time-sharing, allowing multiple users or applications to share the CPU efficiently.

**Disadvantages of Preemptive Scheduling:**  
- **Context Switching Overhead**: Frequent context switches between processes can cause overhead (time and resources spent saving and restoring process states).  
- **Complexity**: The operating system needs to manage and handle process interruptions, which adds complexity in terms of implementation and resource management.  
- **Starvation**: Lower-priority processes might suffer from starvation if higher-priority processes keep arriving and being executed.

🧠 **3. Non-Preemptive Scheduling**  
**Characteristics of Non-Preemptive Scheduling:**  
- **No Interruptions**: Once a process starts executing, it runs to completion. It cannot be interrupted by other processes unless it voluntarily releases the CPU (for example, it may wait for I/O operations to complete).  
- **Predictable**: Non-preemptive scheduling offers predictable behavior since once a process begins execution, it completes its task without being preempted.  
- **Simpler to Implement**: Non-preemptive scheduling is easier to implement as it does not require the operating system to handle context switching or interruptions.

**Examples of Non-Preemptive Scheduling Algorithms:**  
- **First-Come, First-Served (FCFS)**: Processes are executed in the order of their arrival. The first process to arrive is executed first until completion.  
- **Shortest Job Next (SJN) or Shortest Job First (SJF)**: The process with the shortest burst time is selected next for execution. It’s a non-preemptive version of the Shortest Remaining Time First (SRTF).  
- **Non-Preemptive Priority Scheduling**: Processes are assigned priorities, and the highest-priority process runs to completion before others. There’s no interruption once a process starts.

**Advantages of Non-Preemptive Scheduling:**  
- **Simplicity**: Non-preemptive scheduling is simpler to implement since the scheduler does not have to deal with interruptions and context switching.  
- **No Context Switching**: Since processes are not interrupted, there is no context-switching overhead, which can improve efficiency in certain situations.  
- **Predictability**: Processes complete without interruption, which may be desirable for certain tasks (e.g., batch processing).

**Disadvantages of Non-Preemptive Scheduling:**  
- **Poor Responsiveness**: Non-preemptive scheduling can lead to poor responsiveness in systems that require quick processing of interactive tasks.  
- **Starvation**: Low-priority processes may experience starvation if high-priority processes are continuously arriving and executing.  
- **Long Waiting Time**: If a long process is running, all the other processes in the queue will have to wait, resulting in long waiting times for others (especially in FCFS scheduling).

🧠 **4. Comparison Between Preemptive and Non-Preemptive Scheduling**  
**Key Differences:**

| Feature                         | Preemptive Scheduling         | Non-Preemptive Scheduling    |
|----------------------------------|-------------------------------|------------------------------|
| **Interruptions**                | Processes can be preempted by the OS. | Processes cannot be interrupted once started. |
| **Complexity**                   | More complex due to need for context switching. | Simpler to implement with less overhead. |
| **CPU Utilization**              | More efficient in maximizing CPU utilization. | May result in idle time if a process is running too long. |
| **System Responsiveness**        | Better responsiveness, especially for interactive systems. | Poor responsiveness for real-time or interactive tasks. |
| **Fairness**                     | Higher fairness with equal CPU allocation. | Fairness depends on the scheduling algorithm (e.g., FCFS). |
| **Starvation**                   | Can lead to starvation for lower-priority processes. | Starvation is less common, but longer processes can delay others. |

🧠 **5. Example of Preemptive vs Non-Preemptive Scheduling**  

**Example 1: Preemptive Scheduling (Round Robin)**

| Process | Arrival Time | Burst Time | Time Quantum |
| ------- | ------------ | ---------- | ------------ |
| P1      | 0            | 5          | 2            |
| P2      | 1            | 4          | 2            |
| P3      | 2            | 3          | 2            |

**Steps (with time quantum = 2):**  
- P1 runs from 0 to 2 (time quantum expired, preempted).  
- P2 runs from 2 to 4.  
- P3 runs from 4 to 6.  
- P1 resumes and runs from 6 to 8.  
- P2 resumes and completes at 8.  
- P3 completes at 10.  
- P1 completes at 10.  

**Gantt Chart (Preemptive):**
```cpp
| P1 | P2 | P3 | P1 | P2 | P3 |
0    2    4    6    8    10   10
```

**Example 2: Non-Preemptive Scheduling (First-Come, First-Served)**

| Process | Arrival Time | Burst Time |
| ------- | ------------ | ---------- |
| P1      | 0            | 5          |
| P2      | 1            | 4          |
| P3      | 2            | 3          |

**Steps (FCFS):**  
- P1 runs from 0 to 5 (completes).  
- P2 runs from 5 to 9 (completes).  
- P3 runs from 9 to 12 (completes).  

**Gantt Chart (Non-Preemptive):**
```cpp
| P1 | P2 | P3 |
0    5    9    12
```

🧠 **6. When to Use Preemptive vs Non-Preemptive Scheduling**  
- **Preemptive Scheduling** is best suited for interactive systems, real-time applications, and systems where high responsiveness is required.  
- **Non-Preemptive Scheduling** is appropriate for batch processing systems or systems where predictable behavior is more important than responsiveness.

✏️ **Classwork Exercises:**  
1. **Compare Preemptive and Non-Preemptive Scheduling**:  
   Given a set of processes with burst times and arrival times, simulate both **Preemptive Round Robin** and **Non-Preemptive FCFS** scheduling. Calculate the waiting time, turnaround time, and average waiting time for each scheduling method.  

2. **Design a Real-World Scheduling System**:  
   Imagine you are designing a scheduling system for a video streaming service. Would you use preemptive or non-preemptive scheduling? Justify your choice based on system needs, such as user responsiveness, CPU utilization, and fairness.

📝 **Homework Assignments:**  
1. **Implement Preemptive and Non-Preemptive Scheduling**:  
   Write a program that simulates **Preemptive Round Robin** and **Non-Preemptive First-Come, First-Served (FCFS)** scheduling. Calculate waiting time, turnaround time, CPU utilization, and average times. Compare the results and discuss which algorithm performs better under different conditions.

2. **Study the Impact of Time Quantum**:  
   Write a report analyzing how the choice of time quantum affects the performance of **Round Robin scheduling**. Test the system with different time quantum values and measure CPU utilization, waiting time, and turnaround time.

🧠 **Summary**  
- **Preemptive Scheduling** allows the operating system to interrupt and reassign CPU time to higher-priority processes, ensuring responsiveness and fairness, but introduces complexity and overhead.  
- **Non-Preemptive Scheduling** executes processes to completion once they start, leading to simpler implementations but poorer responsiveness and potential for long waiting times.  
- The choice between preemptive and non-preemptive scheduling depends on the type of system (interactive vs. batch processing) and the system's performance requirements.
