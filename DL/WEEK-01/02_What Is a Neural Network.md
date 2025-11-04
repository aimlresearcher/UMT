# 1. Introduction

In this lecture, we’ll develop an intuition for what a **neural network** really is and how it learns to represent complex relationships between inputs and outputs.

At its core, **deep learning** means training neural networks—sometimes very large ones—to approximate functions that map from some input \( x \) to an output \( y \).

To build up to this concept, let’s start with a very simple and familiar example.

---

# 2. A Motivating Example: Predicting Housing Prices

Suppose you want to predict the **price of a house** based on its **size**.  
You collect data for six houses, each with a known size (in square feet or square meters) and its selling price.

Your goal is to **fit a function** that maps from house size to house price.

### 🟦 Step 1: Linear Regression

You might first try **linear regression**, fitting a straight line through the data points.

This gives a reasonable trend: as the size increases, price increases.

### 🟩 Step 2: A Better Idea — Non-Negative Prices

However, you might notice a problem: if you extrapolate backward, the line could predict **negative prices** for small houses — which makes no sense.

So instead of using a simple line, you could bend the curve to ensure that the predicted price is never below zero.

You could say:

$\text{Price} = \max(0, w \times \text{Size} + b)$

This function stays at zero for very small houses, then increases linearly after a certain point.

This function — linear for large inputs, zero for small ones — is called the **ReLU function**, short for **Rectified Linear Unit**.

---

# 3. The ReLU Function and a Single Neuron

Let’s visualize what we’ve just done.

We’ve created a simple system where:

- **Input \( x \)** = size of the house  
- **Output \( y \)** = predicted price  
- **Mapping function:** $ \max(0, w \times x + b)$

This simple function can be represented as a **single neuron** — the fundamental unit of a neural network.

### 🧠 One Neuron:
- Takes one input (house size)  
- Applies a linear transformation $w \times x + b$
- Passes it through a non-linear activation (ReLU)  
- Outputs a value (predicted price)

This is the **simplest possible neural network** — just one neuron.

---

# 4. Building Bigger Networks: The LEGO Analogy

Now, imagine this neuron as a single **LEGO brick**.  
To build more complex models, we can **stack many neurons together**, just as you’d stack LEGO pieces to build larger structures.

Each neuron takes inputs, performs a small computation, and passes its result to the next layer of neurons.

When we combine many of these simple units, the network becomes capable of learning **very complex, non-linear functions**.

---

# 5. Expanding the Example: More Features

In reality, housing price depends on more than just size.  
You might have features such as:

| Feature | Description |
|----------|--------------|
| $ x_1 $ | Size (sq. feet or meters) |
| $ x_2 $ | Number of bedrooms |
| $ x_3 $ | Zip code / postal code |
| $ x_4 $ | Wealth of neighborhood |

Each of these features gives useful information about the house.

We can also define **intermediate concepts** (learned automatically by the neural network), such as:

- *Family size* — derived from size and bedrooms  
- *Walkability* — derived from zip code and other factors  
- *School quality* — influenced by neighborhood wealth and location  

Finally, these derived features contribute to predicting the **price**.

---

# 6. Neural Network Structure

Putting it all together, we now have a **multi-layer network**:

- **Input layer:** Receives raw features ($ x_1, x_2, x_3, x_4 $)  
- **Hidden layer:** Computes intermediate features (family size, walkability, etc.)  
- **Output layer:** Produces the final prediction ($ y = $ house price)

Each circle (neuron) in the hidden layer takes all the input features, computes its own function, and passes the result forward.

This type of structure — where every input is connected to every neuron — is called a **fully connected (or dense) layer**.

---

# 7. Learning the Function $ f(x) \to y $

When training the neural network, we provide examples of:

- **Input $ x $:** feature values  
- **Output $ y $:** true prices  

The neural network adjusts its **internal parameters (weights and biases)** to learn the mapping function from $ x $ to \( y \).

After training on enough examples, it becomes remarkably good at predicting prices — even for houses it hasn’t seen before.

This ability to **learn complex mappings from data** is what makes neural networks so powerful.

---

# 8. Neural Networks in Supervised Learning

In most practical scenarios, neural networks are used in **supervised learning** — where we learn to map an input \( x \) to a desired output \( y \).

Some common examples include:

- **Image → Label** (e.g., Cat vs. Dog)  
- **Audio → Text** (Speech Recognition)  
- **Text → Sentiment** (Positive/Negative)  
- **Features → Price** (Regression)

In all of these, we provide the network with examples of correct input–output pairs, and it learns the underlying patterns automatically.

---

# 9. Key Takeaways

- A **neural network** is a system of interconnected neurons, each performing simple computations.  
- The **ReLU function** introduces non-linearity, allowing the network to model complex relationships.  
- **Hidden layers** allow the network to discover useful intermediate representations of the data.  
- With enough data, neural networks can learn **very accurate functions** for a wide variety of tasks.
