# 1. Introduction

As part of this course, I not only want to teach you the technical foundations of deep learning but also to introduce you to the **people who shaped this field** — the pioneers whose ideas have defined how modern AI works today.

In this first interview of the series, I’m honored to present **Professor Geoffrey Hinton**, widely regarded as the *Godfather of Deep Learning.*

Hinton’s contributions — from **backpropagation** to **Boltzmann machines**, **word embeddings**, **dropout**, and **capsule networks** — have profoundly shaped the entire discipline.

---

# 2. Hinton’s Early Journey into AI

**Andrew Ng:** Geoff, many people know you as a legend in deep learning, but could you share your personal journey — how did you first become interested in neural networks and AI?

**Geoffrey Hinton:**  
It started back in high school. A classmate once told me the brain might use holograms to store memories — that even if you cut a hologram in half, you still get the whole image. That idea of **distributed representation** fascinated me.

Later, in university, I explored physiology and physics, then philosophy and psychology. Psychology, at that time, had overly simple theories that didn’t seem to explain the brain. I took time off, worked as a carpenter, and eventually decided to study AI in Edinburgh under **Christopher Longuet-Higgins**.

Ironically, he had just given up on neural networks — but I kept pursuing them, believing that was the right path.

---

# 3. The Birth of Backpropagation

**Andrew Ng:** Let’s talk about backpropagation — the algorithm that made deep learning possible. How did it come about?

**Hinton:**  
In 1982, I worked with **David Rumelhart** and **Ronald Williams**. Together, we developed what became known as the **backpropagation algorithm**. We realized that using the **chain rule** to compute derivatives allowed neural networks to adjust weights efficiently.

Interestingly, others like **Paul Werbos** and **David Parker** had also discovered similar methods — but our **1986 paper in *Nature*** popularized it.

We demonstrated that neural networks could learn meaningful **internal representations**, even capturing semantic relationships like **family trees** — an early form of **word embeddings**. That caught the attention of the research community.

---

# 4. Early Challenges and Progress

In the 1980s, neural networks weren’t fashionable.  
In Britain, they were seen as a dead end. But when I moved to California, I found open-minded colleagues — people like **David Rumelhart** and **Don Norman** — who were excited about connecting psychology, neuroscience, and computation.

Between 1986 and the early 1990s, as computers became **100× faster**, neural networks finally became **practical to experiment with**.

---

# 5. Boltzmann Machines and Restricted Boltzmann Machines

**Hinton:**  
One of my favorite inventions is the **Boltzmann Machine**, developed with **Terry Sejnowski**. It’s a neural network that learns hidden representations through a simple rule — based on two alternating phases called **wake** and **sleep**.

Each synapse only needs local information from the two neurons it connects — something **biologically plausible**.

Initially, it was too slow to be useful. But later, by simplifying the design into **Restricted Boltzmann Machines (RBMs)**, we made them efficient.  
RBMs became the foundation for **Deep Belief Networks (DBNs)**, which played a crucial role in the **2006 resurgence of deep learning.**

---

# 6. Deep Belief Networks (DBNs)

In a **DBN**, each layer learns features from the one below it — a process known as **greedy layer-wise training**.

Hinton’s key insight: stacking RBMs not only made learning deep architectures feasible but also improved **probabilistic inference**.  
Each new layer represented a **variational improvement** over the previous one — guaranteeing a tighter bound on the model’s likelihood.

This work **bridged the gap** between probabilistic graphical models and neural networks, helping to **unify two major AI traditions**.

---

# 7. Variational Learning and Bayesian Methods

Another major contribution was **variational learning**, where Hinton showed how to approximate **Bayesian inference** efficiently using neural networks.

In **1993**, with **Peter van Camp**, he published one of the first **Variational Bayes papers** — showing that approximate inference could make Bayesian learning practical for large models.

---

# 8. ReLU Activation and Its Role

**Ng:** Many people today use ReLU activations — where did that idea come from?

**Hinton:**  
The **Rectified Linear Unit (ReLU)** had existed, but we formalized its connection to stacks of logistic units in **Restricted Boltzmann Machines.**

We proved mathematically that a ReLU behaves like a group of logistic neurons, which justified using it in deep networks.

This insight was crucial because it **solved the vanishing gradient problem** that plagued sigmoid activations and made **gradient descent training much faster.**

---

# 9. Fast Training and Identity Initialization

Later, we found that initializing ReLU networks with the **identity matrix** allowed us to train very deep networks — even with **300 layers** — efficiently.  
Unfortunately, we didn’t push that idea far enough at the time. Later, this insight evolved into what became **Residual Networks (ResNets).**

---

# 10. Neural Networks and the Brain

**Ng:** You’ve often talked about the relationship between backpropagation and the brain. What are your thoughts on that today?

**Hinton:**  
If **backpropagation** works so well, evolution likely found a way to **approximate it biologically**.

The idea that “the brain can’t possibly do backprop” seems misguided — if cells can specialize into eyes and teeth, they can implement something as simple as gradient-based learning.

I’ve explored several **biologically plausible alternatives**, such as the **recirculation algorithm**, where signals loop between layers to minimize reconstruction errors — a concept later echoed in **spike-timing-dependent plasticity (STDP).**

---

# 11. Capsules: A New Vision Model

**Ng:** You’ve recently proposed “capsules.” Could you explain what they are?

**Hinton:**  
**Capsules** are groups of neurons that represent an entity and its properties — like position, orientation, and scale — rather than a single scalar activation.

They use a process called **routing by agreement**, where capsules at one level *vote* on how lower-level features (like a mouth or nose) combine to form higher-level structures (like a face).

This approach aims to make neural networks **more data-efficient** and **better at understanding spatial hierarchies**, something CNNs still struggle with.

---

# 12. Supervised vs. Unsupervised Learning

**Hinton:**  
In the 1980s and ’90s, I believed most human learning was **unsupervised** — that’s how we learn from experience.  
While **supervised learning** has driven the recent success of AI, I still believe **unsupervised learning (and now self-supervised learning)** will be the future.

Techniques like **Variational Autoencoders (VAEs)** and **Generative Adversarial Networks (GANs)** are exciting steps in that direction.

---

# 13. Thoughts on AI Paradigms

**Ng:** How do you view the evolution of AI paradigms — from symbolic logic to neural computation?

**Hinton:**  
In the early days, AI researchers assumed intelligence must be built on **symbolic logic** — strings of words and formal rules.

But **thoughts are not symbols.**  
They are **high-dimensional patterns of neural activity** — vectors that cause other vectors.

To me, thinking in symbols is as naive as assuming vision must be represented as pixels.  
Symbols come in and go out, but what happens in between — the thought itself — is **continuous, distributed, and sub-symbolic.**

That’s the paradigm shift **deep learning** brought.

---

# 14. Advice for New Researchers

**Hinton’s Advice for Learners:**

- **Read — but not too much.** Read enough to understand what others believe, then look for what feels wrong and challenge it.  
- **Trust your intuition.** If your idea feels right, pursue it — even when others say it’s nonsense.  
- **Keep programming.** The best researchers stay close to the code.  
- **If everyone thinks your idea is crazy, you might be onto something.**

---

# 15. On Academia vs. Industry

Right now, there aren’t enough professors to train the number of students entering AI.  
Large tech companies like **Google Brain**, **DeepMind**, and **OpenAI** have taken on part of that educational role through **residency programs.**

But universities will eventually adapt — shifting from *“programming computers”* to *“teaching computers by showing them.”*  
This marks a **fundamental change** in how **computer science itself** is defined.

---

# 16. Closing Reflections

**Ng:** Geoff, thank you for sharing your journey and insights.

**Hinton:**  
Thank you. It’s been remarkable to watch deep learning evolve — from a small, doubted idea into a **transformative global movement**.  
But we’re still just scratching the surface.

---

## 🌟 Key Takeaways

| **Theme** | **Insight** |
|------------|-------------|
| **Origins** | Hinton pursued neural networks despite academic skepticism. |
| **Backpropagation** | Popularized through Hinton, Rumelhart, and Williams (1986). |
| **RBMs & DBNs** | Introduced deep unsupervised feature learning. |
| **ReLU & ResNets** | Mathematical grounding made training deep nets feasible. |
| **Brain Inspiration** | Belief that backprop-like learning exists in biology. |
| **Capsules** | Aim to improve spatial understanding and data efficiency. |
| **Advice** | Read selectively, code constantly, and trust your intuition. |
| **Philosophy** | Thoughts are vectors — intelligence is distributed computation. |
