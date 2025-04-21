# 🤖 Lecture: Agents, Intelligent Agents, Rationality, and PEAS

🔗 **Aligned with** CLO1 from CS3151-AI course  
📘 **Based on** Chapter 2 of *Artificial Intelligence: A Modern Approach* by Russell & Norvig

---

## 🎯 Learning Objectives

By the end of this lecture, students will be able to:

- 🧠 Define agents and intelligent agents  
- 🧰 Understand agent architectures and environments  
- ⚖️ Explain the concept of rationality in AI  
- 🧩 Describe and design the PEAS framework  
- 🔍 Classify agents by behavior (simple, model-based, goal-based, utility-based, learning agents)  

---

## 🧠 Part 1: What is an Agent?

### 📘 Definition

> An agent is anything that can perceive its environment through sensors and act upon that environment through actuators.

🔄 **Example**: Robot Vacuum Cleaner  
- **Sensors**: Bump detector, camera, GPS  
- **Actuators**: Wheels, suction motor  

### 🧰 Agent Function

An agent function maps any percept sequence to an action:  
**f: P\* → A**  
Where:  
- P\* = all possible percept sequences  
- A = set of actions  

---

## 🤖 Part 2: Intelligent Agents

### 🧠 What Makes an Agent “Intelligent”?

| ⭐ Feature       | 📖 Description                         |
|------------------|----------------------------------------|
| Autonomy         | Makes decisions without human input    |
| Adaptivity       | Learns and improves over time          |
| Rationality      | Chooses actions to maximize performance|
| Reactivity       | Responds to environment changes        |
| Proactiveness    | Works toward long-term goals           |

✨ **Case Example**: Google Maps as an Intelligent Agent  
- **Sensors**: GPS, traffic data  
- **Actuators**: Route updates  
- **Rationality**: Minimizes Estimated Time of Arrival (ETA)

---

## 🎯 Part 3: Rationality in Agents

### 📘 What is Rationality?

A rational agent selects an action that **maximizes expected performance**, given:

- 🧠 Percept sequence to date  
- 🌍 Knowledge of the environment  
- ⚙️ Capabilities  
- 🔀 Expected outcomes of actions  

⚖️ **Note**: Rational ≠ Omniscient  
Rational agents do *not* need to know the future—they just make the best decisions *with what they know*.

| 🧠 Concept      | 📖 Description                                |
|----------------|-----------------------------------------------|
| Omniscient     | Knows the actual outcome of every action      |
| Rational       | Acts based on the best expected outcome       |

🧪 **Mini Quiz #1**:  
*What’s the difference between a rational agent and an omniscient agent?*

---

## ⚙️ Part 4: PEAS – A Framework for Agent Design

📘 **PEAS stands for**:  
- **P**: Performance Measure  
- **E**: Environment  
- **A**: Actuators  
- **S**: Sensors  

### 📋 Examples

| 🧪 Task              | 🏆 Performance | 🌍 Environment | ⚙️ Actuators      | 👀 Sensors          |
|----------------------|----------------|----------------|-------------------|---------------------|
| Self-driving car     | Safety, speed   | Roads, traffic | Steering, brakes  | Camera, GPS, LIDAR  |
| Spam filter          | Accuracy        | Emails         | Deliver/delete    | Text, metadata      |
| Chess-playing robot  | Win/loss        | Board/opponent | Robotic arms      | Board state, vision |
| Delivery drone       | Fast delivery   | Urban space    | Rotors, GPS       | Gyroscope, camera   |

🎯 **Activity**:  
*Design a PEAS framework for an “AI Teacher Assistant” in groups.*

---

## 🔄 Part 5: Types of Agents

| 🧠 Agent Type        | 📖 Description                           | 💡 Example                    |
|----------------------|------------------------------------------|-------------------------------|
| Simple Reflex        | Acts only on current percept             | Thermostat                   |
| Model-based Reflex   | Uses internal state                      | Smart vacuum cleaner         |
| Goal-based           | Uses goals to guide behavior             | Chess-playing agent          |
| Utility-based        | Uses utility function to select action   | Financial advisor AI         |
| Learning Agent       | Learns from feedback and improves        | ChatGPT, Recommender system  |

🧪 **Mini Quiz #2**:  
*What’s the key difference between goal-based and utility-based agents?*

---

## ✏️ Classwork

✅ **Task 1**:  
Create a PEAS table for one of the following:  
- (a) AI-based personal finance advisor  
- (b) Smart irrigation system  
- (c) University admission chatbot  

✅ **Task 2**:  
Classify the following agents:  
- (1) Automatic hand dryer  
- (2) Waze navigation app  
- (3) AI-based weather forecasting tool  

---

## 📝 Homework Assignment

📝 **Essay**:  
*"Designing a Rational Agent for Smart Farming in Pakistan"* (1 page)

📖 **Reading**:  
Chapter 2 – *Intelligent Agents* (Russell & Norvig)

💻 **Programming (optional)**:  
Write pseudocode for a **goal-based vacuum agent** that cleans a grid-based room.

---

## 🏁 Summary & Closing Reflection

- 🤖 Agents are entities that perceive and act in their environment  
- 🧠 Intelligent agents are autonomous, adaptive, and rational  
- ⚖️ Rational agents use current knowledge—not future certainty—to act  
- 🧩 PEAS helps us design intelligent systems methodically  
- 🔁 Agent types vary from basic reflexes to complex learning systems  
