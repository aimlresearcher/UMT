# 🧠 Apriori Algorithm for Association Rule Mining 🌟

The **Apriori** algorithm is a fundamental algorithm in association rule mining, used to find frequent itemsets and generate association rules from a transactional database.

## Apriori Algorithm: Definition
**Apriori** is based on the principle:
> "All non-empty subsets of a frequent itemset must also be frequent."

This is called the **Apriori property** or **downward closure property**, which helps prune the search space.

### Goal:
Find rules like:
> If a customer buys **{Milk, Bread}**, they are likely to buy **{Butter}**.

## Key Terms:
- **Itemset**: A group of items, e.g., **{Milk, Bread}**.
- **Support**: Fraction of transactions that contain the itemset.

### Support Formula:
$\text{Support}(A) = \frac{\text{Transactions containing A}}{\text{Total transactions}}$

- **Confidence**: Likelihood that item **B** is also bought when **A** is bought.

### Confidence Formula:
$\text{Confidence}(A \Rightarrow B) = \frac{\text{Support}(A \cup B)}{\text{Support}(A)}$

- **Lift**: Measures improvement over random chance.

### Lift Formula:
$\text{Lift}(A \Rightarrow B) = \frac{\text{Confidence}(A \Rightarrow B)}{\text{Support}(B)}$

---

## **Apriori Algorithm – Step-by-Step** 🔍

### Input:
- **Transaction dataset**
- **Minimum support threshold**
- **Minimum confidence threshold**

### Output:
- **Frequent itemsets**
- **Strong association rules**

### Steps:
1. **Find Frequent 1-itemsets**
   - Scan the database (DB) and count the support of each item.
   - Keep those with support ≥ minimum support.

2. **Generate Candidate k-itemsets (Ck)**
   - Use frequent (k-1)-itemsets (Lk-1) to generate Ck.
   - Use the Apriori property to prune Ck.
   - Scan the DB and count support for Ck.
   - Form Lk (frequent k-itemsets).

3. **Repeat steps 1 and 2 until no more frequent itemsets are found.**

4. **Generate Association Rules**
   - For each frequent itemset **L**, generate rules.
   - For **A ⊂ L**, output rule **A ⇒ (L − A)**.
   - If confidence ≥ min_confidence, output the rule.

---

## **Example Dataset**:
| Transaction ID | Items                                  |
|----------------|----------------------------------------|
| T1             | Milk, Bread                            |
| T2             | Milk, Diaper, Beer, Eggs               |
| T3             | Milk, Diaper, Beer, Coke               |
| T4             | Bread, Milk, Diaper, Beer              |
| T5             | Bread, Milk, Diaper, Coke              |

**Set min_support = 60%, min_confidence = 80%**

### **Frequent Itemsets Example Output**:
- **1-itemsets**: {Milk}, {Bread}, {Diaper}, {Beer}
- **2-itemsets**: {Milk, Bread}, {Milk, Diaper}, {Diaper, Beer}
- **3-itemset**: {Milk, Diaper, Beer}

### **Association Rules Example**:
From itemset **{Milk, Diaper}**:

**Rule**: Milk ⇒ Diaper  
**Confidence** = $(\frac{\text{Support}(Milk \cap Diaper)}{\text{Support}(Milk)})$

# 🧠 Support, Confidence, and Lift in Association Rule Mining 🌟

### 1. **Support**
**Definition**:  
Support measures how frequently an itemset appears in the dataset.

### Support Formula:
$\text{Support}(A) = \frac{\text{Number of transactions containing A}}{\text{Total number of transactions}}$

#### Example:
Let’s say we have 5 transactions:

| TID  | Items                           |
|------|---------------------------------|
| T1   | Milk, Bread                     |
| T2   | Milk, Diaper, Beer, Eggs        |
| T3   | Milk, Diaper, Beer, Coke        |
| T4   | Bread, Milk, Diaper, Beer       |
| T5   | Bread, Milk, Diaper, Coke       |

- **Support(Milk)** = Appears in T1, T2, T3, T4, T5 → \(\frac{5}{5} = 1.0\)
- **Support(Diaper)** = Appears in T2, T3, T4, T5 → \(\frac{4}{5} = 0.8\)
- **Support(Milk & Diaper)** = Appears in T2, T3, T4, T5 → \(\frac{4}{5} = 0.8\)

---

### 2. **Confidence**
**Definition**:  
Confidence measures the likelihood of **B** being purchased when **A** is purchased.

### Confidence Formula:
$\text{Confidence}(A \Rightarrow B) = \frac{\text{Support}(A \cup B)}{\text{Support}(A)}$

#### Example:
From the above:

- **Support(Milk)** = 1.0
- **Support(Milk & Diaper)** = 0.8

$\text{Confidence}(Milk \Rightarrow Diaper) = \frac{0.8}{1.0} = 0.8 \quad \text{or} \quad 80\%$

**Interpretation**:  
80% of the people who bought Milk also bought Diaper.

---

### 3. **Lift**
**Definition**:  
Lift tells us how much more likely **B** is to be bought when **A** is bought, compared to chance.

### Lift Formula:
$\text{Lift}(A \Rightarrow B) = \frac{\text{Confidence}(A \Rightarrow B)}{\text{Support}(B)}$

#### Example:
- **Confidence(Milk \Rightarrow Diaper)** = 0.8
- **Support(Diaper)** = 0.8

$\text{Lift} = \frac{0.8}{0.8} = 1.0$

**Interpretation**:
- **Lift = 1**: **A** and **B** are independent.
- **Lift > 1**: **A** increases the likelihood of **B** (positive association).
- **Lift < 1**: **A** reduces the likelihood of **B** (negative association).

---

# 🧠 Bonus Summary Table for Association Rule Metrics 🌟

| **Metric**   | **Formula**                                            | **Meaning**                                           |
|--------------|--------------------------------------------------------|-------------------------------------------------------|
| **Support**  | $(\frac{\text{Number of transactions containing A}}{\text{Total number of transactions}})$ | Measures the frequency of an itemset in the dataset. |
| **Confidence** | $(\frac{\text{Support}(A \cup B)}{\text{Support}(A)})$    | Measures the likelihood that B is purchased when A is purchased. |
| **Lift**      | $(\frac{\text{Confidence}(A \Rightarrow B)}{\text{Support}(B)})$ | Measures if A is truly influencing B: <br> - **Lift = 1** → A and B are independent <br> - **Lift > 1** → A increases the likelihood of B (positive association) <br> - **Lift < 1** → A reduces the likelihood of B (negative association) |

# 🧠 Example Dataset and Step-by-Step Solution 🌟

### **Example Dataset (5 Transactions)**

| TID  | Items                               |
|------|-------------------------------------|
| T1   | Milk, Bread                        |
| T2   | Milk, Diaper, Beer, Eggs           |
| T3   | Milk, Diaper, Beer, Coke           |
| T4   | Bread, Milk, Diaper, Beer          |
| T5   | Bread, Milk, Diaper, Coke          |

### **Target Rule:**
**Milk ⇒ Diaper**

We will compute:

- **Support(Milk)**
- **Support(Diaper)**
- **Support(Milk ∩ Diaper)**
- **Confidence(Milk ⇒ Diaper)**
- **Lift(Milk ⇒ Diaper)**

---

### **Step-by-Step Solution**

#### **Step 1: Count Total Transactions**
$\text{Total Transactions} = 5$

---

#### **Step 2: Count Support(Milk)**
Milk appears in all transactions: T1, T2, T3, T4, T5.

$\text{Support(Milk)} = \frac{5}{5} = 1.0$

---

#### **Step 3: Count Support(Diaper)**
Diaper appears in: T2, T3, T4, T5.

$\text{Support(Diaper)} = \frac{4}{5} = 0.8$

---

#### **Step 4: Count Support(Milk ∩ Diaper)**
Both Milk and Diaper appear together in: T2, T3, T4, T5.

$\text{Support(Milk ∩ Diaper)} = \frac{4}{5} = 0.8$

---

#### **Step 5: Confidence(Milk ⇒ Diaper)**
$\text{Confidence(Milk ⇒ Diaper)} = \frac{\text{Support(Milk ∩ Diaper)}}{\text{Support(Milk)}} = \frac{0.8}{1.0} = 0.8 \quad \text{or} \quad 80\%$

**Interpretation**:  
80% of the people who bought Milk also bought Diaper.

---

#### **Step 6: Lift(Milk ⇒ Diaper)**
$\text{Lift(Milk ⇒ Diaper)} = \frac{\text{Confidence(Milk ⇒ Diaper)}}{\text{Support(Diaper)}} = \frac{0.8}{0.8} = 1.0$

**Interpretation**:  
Lift = 1 means there is no strong association between Milk and Diaper; they are statistically independent.

---

### **Final Result:**

| **Metric**    | **Value** |
|---------------|-----------|
| **Support**   | 0.8       |
| **Confidence**| 0.8       |
| **Lift**      | 1.0       |
