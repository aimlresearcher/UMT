# Lecture on Logical Agents: Wumpus World  
### **Course:** Artificial Intelligence  
### **Instructor:** Syed Hamed Raza 

---

### **Overview of the Lecture:**
This lecture introduces **Logical Agents** in the context of the **Wumpus World**, a well-known example in artificial intelligence used to demonstrate how agents can use **logical reasoning** to interact with and navigate through a partially known environment. The Wumpus World is a simple world with hazards and goals, and it requires logical agents to make decisions based on incomplete information. By the end of the lecture, you will understand how knowledge-based agents can be used to reason about the environment and plan actions to achieve their goals.

---

### **Agenda:**
1. **Introduction to Wumpus World**  
2. **Description of the Wumpus World Environment**  
3. **Logical Representation of the Wumpus World**  
4. **Reasoning in the Wumpus World**  
   - **Using Propositional Logic**  
   - **Using First-Order Logic**  
5. **Building a Knowledge-Based Agent for the Wumpus World**  
6. **Classroom Discussion and Problem Solving**  

---

### **1. Introduction to Wumpus World**  

#### **What is the Wumpus World?**
- The **Wumpus World** is a grid-based environment where an agent (the "hunter") needs to navigate through the world to find gold while avoiding hazards, such as pits and the dangerous Wumpus creature.
- The Wumpus World is used to demonstrate **logical reasoning** in AI, where the agent must make decisions based on **incomplete and noisy information** about the environment.
  
#### **Key Features of the Wumpus World:**
- **Grid World**: The Wumpus World is typically represented as a **4x4 grid**, with each cell in the grid representing a different location.
- **Hazards**: The agent must avoid hazards such as **pits** and the **Wumpus**.
- **Gold**: The goal of the agent is to find and grab the **gold** while avoiding the Wumpus and the pits.
- **Percepts**: The agent perceives certain clues about its environment, such as:
  - **Breeze**: Indicates that there is a pit in a neighboring square.
  - **Stench**: Indicates that the Wumpus is in a neighboring square.
  - **Glitter**: Indicates that the agent is in the same square as the gold.

---

### **2. Description of the Wumpus World Environment**  

- **Grid Setup**: The Wumpus World is a **4x4 grid**, with the following components:
  - **Pits**: Randomly placed in some squares. The agent must avoid falling into them.
  - **Wumpus**: A dangerous creature that is also placed randomly on the grid. If the agent moves into the Wumpus’s square, the agent is eaten and the game ends.
  - **Gold**: A goal for the agent to find, located in one of the squares.
  - **Agent's Movement**: The agent can move north, south, east, or west, and can also pick up the gold once it has found it.
  
- **Perceptual Feedback**: The agent receives perceptual feedback that helps it make decisions:
  - **Breeze**: Informs the agent that there is a pit in one of the neighboring squares.
  - **Stench**: Informs the agent that the Wumpus is in one of the neighboring squares.
  - **Glitter**: Informs the agent that it is in the same square as the gold.
  
---

### **3. Logical Representation of the Wumpus World**  

#### **Using Propositional Logic**  
- **Propositional logic** can be used to represent simple facts about the Wumpus World environment. For example:
  - **Breeze(x, y)**: There is a breeze at location (x, y), indicating a pit in a neighboring square.
  - **Stench(x, y)**: There is a stench at location (x, y), indicating the presence of the Wumpus in a neighboring square.
  - **Glitter(x, y)**: There is glitter at location (x, y), indicating the presence of the gold in the square.
  
- These facts can be used as **rules** that help the agent make inferences about the environment and its actions. For instance:
  - **If there is a breeze, then there must be a pit in a neighboring square.**
  - **If there is a stench, the Wumpus must be in one of the neighboring squares.**
  
#### **Using First-Order Logic (FOL)**  
- **First-order logic** provides a more expressive way of representing knowledge, allowing for variables and quantifiers. For example:
  - **Pit(x, y)**: There is a pit in location (x, y).
  - **Wumpus(x, y)**: The Wumpus is at location (x, y).
  - **Adjacent(x, y, z, w)**: The location (x, y) is adjacent to location (z, w).

- **First-Order Logic** allows us to express rules such as:
  - **For all (x, y), if there is a breeze in (x, y), then there is a pit in one of the adjacent squares.**
  - **For all (x, y), if there is a stench in (x, y), then the Wumpus is in one of the adjacent squares.**

---

### **4. Reasoning in the Wumpus World**  

#### **Using Propositional Logic**  
- The agent reasons about its environment by applying **logical inference** to its percepts. It can use **forward chaining** or **backward chaining** to infer new facts based on the current percepts.
  
- **Example of Inference**:  
  - If the agent perceives a breeze in its current square, it can infer that a pit exists in one of the neighboring squares.
  - If the agent perceives a stench, it can infer that the Wumpus is in one of the neighboring squares.

#### **Using First-Order Logic**  
- **First-order logic** can be used to infer more complex relationships between the agent and its environment. For example, the agent can use **universal quantifiers** to reason about all squares in the grid or **existential quantifiers** to reason about the existence of a pit or Wumpus in a neighboring square.
  
- The agent can use the **knowledge base** to draw conclusions about the layout of the world and make decisions based on logical reasoning.

---

### **5. Building a Knowledge-Based Agent for the Wumpus World**  

#### **Steps for Building the Agent:**
1. **Represent Knowledge**: Use **propositional or first-order logic** to represent the facts about the world, such as the presence of pits, the Wumpus, and the gold.
2. **Perceptual Feedback**: The agent must be able to interpret the **breeze**, **stench**, and **glitter** it perceives in its environment.
3. **Inference Mechanism**: Implement an **inference engine** that allows the agent to deduce new facts based on its knowledge base. This engine will help the agent determine where the pits and the Wumpus are located and how to avoid them.
4. **Decision-Making**: The agent must make decisions based on its knowledge base and inferences. For example, if the agent perceives a stench, it can infer that the Wumpus is nearby and avoid moving into that square.

---

### **6. Classroom Discussion and Problem Solving**  

- **Open Discussion:** How can we extend the Wumpus World to handle more complex scenarios, such as dynamic changes in the environment or multiple agents? 
- **Hands-on Activity:** Implement a **logical agent** for the Wumpus World using **first-order logic** or **propositional logic**. Test the agent’s ability to navigate the world, avoiding pits and the Wumpus, and retrieving the gold.

---

### **Conclusion:**
- **Summary:** In this lecture, we explored the concept of **Logical Agents** and how they can be used to navigate the **Wumpus World**. We discussed how knowledge is represented in **propositional logic** and **first-order logic**, how reasoning can be done using logical inference, and how knowledge-based agents can be constructed to make decisions based on this reasoning.
- **Next Steps:** In the next lecture, we will explore more advanced techniques for handling **dynamic environments** and **non-deterministic actions**, and discuss how these techniques are applied in real-world AI systems.

