# 🌍 Lecture: Environment Types & Types of Agents

📘 **Based on** Chapter 2 of *Artificial Intelligence: A Modern Approach* by Russell & Norvig  
🔗 **Aligned with** CLO1 – Understand key components of AI

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🌐 Understand various types of environments in which agents operate  
- 📊 Classify environments based on key characteristics (e.g., observable, deterministic)  
- 🤖 Describe and differentiate among various types of agents  
- 🔄 Match suitable agent types with environment types  
- 🧰 Apply agent modeling to real-world domains using PEAS analysis  

---

## 🌍 Part 1: Environment Types

### 📘 What is an Environment?

> An environment is everything external to the agent that it interacts with through percepts (input) and actions (output).

### 📊 Key Properties of Environments

| 🏷️ Property      | 📖 Definition                                   | 🔍 Example                          |
|------------------|--------------------------------------------------|-------------------------------------|
| Observable       | Agent sees full state of environment             | Chess (Fully), Poker (Partially)   |
| Deterministic    | Next state is predictable                        | Chess (Deterministic), Dice (Stochastic) |
| Episodic         | Tasks divided into independent episodes          | Spam filter (Episodic), Chess (Not)|
| Static           | Environment stays constant during decision       | Crossword (Static), Taxi (Dynamic) |
| Discrete         | Limited number of defined states                 | Sudoku (Discrete), Driving (Continuous) |
| Single-agent     | Only one decision-making agent                   | Sudoku Solver (Single), Soccer (Multi) |

🧪 **Mini Quiz #1**:  
*Classify the environments:*
- Autonomous drone in a city  
- Online shopping recommender system  
- Chess with a clock  

---

## 🔄 Part 2: Environment Examples

| 🎯 Task                   | 👁️ Observable | 🎲 Deterministic | 🎞️ Episodic | 🛑 Static | 🧩 Discrete | 👥 Multi-agent |
|---------------------------|----------------|------------------|--------------|------------|---------------|----------------|
| Self-driving car          | Partially      | Stochastic        | No           | No         | Continuous     | Yes            |
| Facial recognition system | Fully          | Deterministic     | Yes          | Yes        | Discrete       | No             |
| Vacuum robot              | Partially      | Deterministic     | No           | No         | Discrete       | No             |
| Pac-Man game              | Fully          | Stochastic        | No           | No         | Discrete       | Yes            |

---

## 🧠 Part 3: Types of Agents

### 📘 Agent Classification by Intelligence

#### 🟢 Simple Reflex Agents
- 💡 Acts only on current percept (no memory)  
- ⚠️ Limited to fully observable environments  
- 🔍 *Example*: Room thermostat  

#### 🟡 Model-Based Reflex Agents
- 🧠 Maintains internal state  
- ✅ Suitable for partially observable environments  
- 🔍 *Example*: Vacuum cleaner with room map  

#### 🔵 Goal-Based Agents
- 🎯 Uses goals to determine behavior  
- 🔀 Can evaluate multiple action paths  
- 🔍 *Example*: Maze-solving robot  

#### 🟣 Utility-Based Agents
- ⚖️ Chooses actions based on utility function  
- ✅ Best for handling multiple goals  
- 🔍 *Example*: Financial advisor AI  

#### 🟠 Learning Agents
- 🧠 Learns using feedback from environment  
- 🧩 Components: Learning element, performance element, critic, problem generator  
- 🔍 *Example*: AlphaZero (chess/Go)

🧪 **Mini Quiz #2**:  
*Match the agent to environment:*  
- Self-learning chess engine  
- Smoke detector  
- Route planner app  
- Spam filter  

---

## 🛠️ Part 4: Choosing the Right Agent for the Environment

| 🌍 Environment Type                    | 🤖 Best Agent Type                     |
|----------------------------------------|----------------------------------------|
| Fully observable + static              | Simple Reflex / Model-Based            |
| Partially observable                   | Model-Based / Learning                 |
| Dynamic                                | Goal-Based / Utility-Based             |
| Stochastic                             | Utility-Based / Learning               |

---

## ✏️ Classwork

✅ **Task 1**:  
Choose one domain below. For each, classify the environment (6 properties) and suggest the best agent type:

- 🌱 Smart irrigation system  
- ⚖️ AI legal assistant  
- 🚨 Rescue robot in a disaster zone  

✅ **Task 2**:  
Fill in the table below:

| 🤖 Agent Name        | 🧠 Type             | 👁️ Sensor      | ⚙️ Actuator     | 🧠 Memory? | 📈 Learns? |
|----------------------|--------------------|----------------|----------------|------------|------------|
| Washing Machine       |                    |                |                |            |            |
| Self-checkout AI      |                    |                |                |            |            |
| Roomba Vacuum         |                    |                |                |            |            |

---

## 📝 Homework Assignment

📄 **Essay (1 Page)**:  
*"Designing a Rational Agent for Smart Traffic Management in Lahore"*

📖 **Reading**:  
Russell & Norvig, Chapter 2 (Sections 2.3 – 2.6)

💻 **Optional Programming**:  
Simulate a **reflex agent** in Python that moves in a 2D grid and cleans “dirty” tiles.

---

## 🧠 Summary & Recap

- 🌐 **Environments** are characterized by six key properties: observability, determinism, episodicity, dynamics, discreteness, and agent count.  
- 🧠 **Agents** range from simple reflex systems to advanced learning architectures.  
- ⚖️ **Agent type should match environment type** for optimal performance.  
- 🧩 **PEAS** and classification help design intelligent systems rationally and effectively.
