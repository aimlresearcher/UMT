# Lecture on Resource Limitations and Non-Deterministic Games  
### **Course:** Artificial Intelligence  
### **Instructor:** Syed Hamed Raza  

---

### **Overview of the Lecture:**
This lecture will focus on **Resource Limitations** and **Non-Deterministic Games** in the context of **game-playing AI**. As AI applications grow, especially in games, two challenges that frequently arise are the **limited resources** (time, memory, processing power) available to search for optimal solutions, and the complexity introduced by **non-deterministic games**, where the outcome of an action can vary. By the end of this lecture, you will understand how these limitations impact game-playing algorithms and how they can be addressed.

---

### **Agenda:**
1. **Introduction to Resource Limitations**  
2. **Types of Resource Limitations in AI**  
   - **Time Limitations**  
   - **Memory Limitations**  
   - **Processing Power Limitations**  
3. **Handling Resource Limitations in Game AI**  
4. **Introduction to Non-Deterministic Games**  
5. **Challenges of Non-Deterministic Games**  
6. **Strategies for Solving Non-Deterministic Games**  
7. **Classroom Discussion and Problem Solving**  

---

### **1. Introduction to Resource Limitations**  

#### **What are Resource Limitations?**
- **Resource limitations** refer to the constraints in the amount of time, memory, and processing power available for the AI to compute a solution. In the context of **game-playing AI**, these limitations can have a significant impact on the choice of search algorithms and strategies used to find optimal solutions.

- **Examples in Game AI:**
  - In real-time games (e.g., **StarCraft** or **Real-Time Strategy (RTS) games**), the AI must make decisions within milliseconds, limiting the amount of computation it can perform.
  - In large-scale games like **Chess**, the number of possible moves can be enormous, and the search tree grows exponentially. Thus, time and memory limitations force the AI to make approximations rather than searching all possible states.

---

### **2. Types of Resource Limitations in AI**  

#### **Time Limitations**  
- **Time limitations** are one of the most critical resource constraints in game AI. Players typically expect a quick response from the AI, especially in real-time games or competitive settings.
- The AI must make decisions within a specific time frame, so algorithms need to be designed to work under tight time constraints.

#### **Memory Limitations**  
- **Memory limitations** refer to the finite amount of memory available for storing game states, intermediate computations, and decision-making strategies. 
- A game tree can become very large, and the AI might not have enough memory to store all possible moves or outcomes. This limitation requires the AI to adopt techniques like **depth-limited search** or **heuristic pruning** to make decisions within memory constraints.

#### **Processing Power Limitations**  
- **Processing power limitations** are another resource concern. The AI may not have the computational power required to evaluate all possible game states, especially in complex games with large state spaces. 
- Techniques such as **Alpha-Beta Pruning** (for reducing the number of branches) and **Monte Carlo Tree Search (MCTS)** (for focusing on the most promising moves) help mitigate processing power constraints.

---

### **3. Handling Resource Limitations in Game AI**  

To effectively handle resource limitations in game AI, several strategies can be adopted:

#### **Depth-Limited Search**  
- Limiting the depth of the search tree helps reduce memory and processing requirements. While this may prevent the AI from finding an optimal solution, it allows for real-time decision-making.
  
#### **Heuristic Evaluation**  
- Using **heuristics** allows the AI to estimate the quality of a game state without fully exploring the entire game tree. For example, in **Chess**, a heuristic might be based on piece values, control of the center, and other factors.

#### **Iterative Deepening**  
- **Iterative deepening** is a combination of depth-limited search and breadth-first search. It gradually increases the search depth, allowing the AI to return a reasonable move even when resources are limited.

#### **Monte Carlo Tree Search (MCTS)**  
- **MCTS** is a probabilistic search technique that is particularly useful in situations where the number of possible actions is too large to explore exhaustively. Instead of evaluating all possible moves, MCTS uses random simulations to estimate which move is likely to lead to a win.

---

### **4. Introduction to Non-Deterministic Games**  

#### **What are Non-Deterministic Games?**
- **Non-deterministic games** are games in which the outcome of a player's action is not guaranteed and may vary, even if the same action is taken multiple times. This contrasts with **deterministic games**, where the outcome of each action is predictable.

- In non-deterministic games, the same game state can lead to different results depending on the external environment, chance, or opponent's actions.

#### **Examples of Non-Deterministic Games:**
- **Poker**: The outcome depends not only on the moves made by players but also on the cards dealt randomly.
- **Backgammon**: The dice roll introduces randomness, making the outcome uncertain even if players make the same moves.
- **Role-Playing Games (RPGs)**: Many RPGs introduce random elements, like dice rolls or random number generators, that affect the outcomes.

---

### **5. Challenges of Non-Deterministic Games**  

#### **Uncertainty in Outcomes**  
- The main challenge in non-deterministic games is the **uncertainty of outcomes**. Unlike deterministic games, where an action's outcome is predictable, non-deterministic games require the AI to plan for uncertainty.
- **Risk Management**: The AI must assess and manage the risk of uncertain outcomes, often using strategies like **probabilistic reasoning** or **Monte Carlo simulations**.

#### **Complexity in Strategy**  
- In non-deterministic games, the AI needs to account for both **the opponent's moves** and the **random events** (e.g., dice rolls or card draws).
- Developing a strategy requires not only planning for the best possible outcome but also preparing for various alternative scenarios.

#### **Incomplete Information**  
- In many non-deterministic games (such as **Poker**), players do not have complete information about the state of the game, which introduces an additional layer of complexity. The AI must make decisions with **incomplete or imperfect information**.

---

### **6. Strategies for Solving Non-Deterministic Games**  

#### **Monte Carlo Tree Search (MCTS)**  
- **MCTS** is particularly useful in non-deterministic games because it handles uncertainty by simulating many random games (playouts) to estimate the likelihood of success for each action. The algorithm then chooses the action that maximizes the chances of winning.

#### **Minimax with Probabilities**  
- In non-deterministic games, the **Minimax Algorithm** can be adapted by incorporating **probabilities** into the evaluation function. The AI will choose the action that maximizes the expected utility, considering the probabilities of different outcomes.
  
#### **Markov Decision Processes (MDPs)**  
- **MDPs** are a mathematical framework used for decision-making in situations where outcomes are partly random and partly under the control of the agent. MDPs help model the process of choosing optimal actions in non-deterministic environments.
  
#### **Game Theory**  
- In games with multiple players, especially those involving incomplete information, **game theory** strategies like **Nash equilibrium** are often used. These strategies provide a way to model the behavior of rational agents in uncertain environments.

---

### **7. Classroom Discussion and Problem Solving**  

- **Open Discussion:** How do non-deterministic elements in games like **Poker** or **Backgammon** affect decision-making for AI? How can we incorporate randomness into our AI models to make them more effective?
- **Hands-on Activity:** Implement **MCTS** for a simple non-deterministic game (e.g., a simplified version of **Backgammon** or a dice game) and explore how the AI handles uncertainty and risk.

---

### **Conclusion:**
- **Summary:** In this lecture, we explored the impact of **resource limitations** and **non-deterministic elements** on game-playing AI. We discussed how time, memory, and processing power constraints affect the performance of game AI, and how techniques like **Monte Carlo Tree Search (MCTS)** are used to manage uncertainty in non-deterministic games.
- **Next Steps:** In the next lecture, we will delve into **Imperfect Information Games** and explore advanced strategies to handle decision-making under uncertainty, including **Bayesian Networks** and **Reinforcement Learning**.

