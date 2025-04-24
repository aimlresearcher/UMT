# 🧠 Bank Loan Approval Prediction Dataset 🌟

### **Problem Statement:**
We want to predict whether a customer will get their loan approved (Yes/No) based on their **Credit History**, **Income**, and **Employment** status.

### **Attributes:**
- **Credit History**: Good or Bad
- **Income**: High or Low
- **Employment**: Employed or Unemployed
- **Loan Approval**: Yes or No (Target Attribute)

### **Dataset:**

| ID  | Credit History | Income | Employment | Loan Approval |
|-----|----------------|--------|------------|---------------|
| 1   | Good           | High   | Employed   | Yes           |
| 2   | Good           | Low    | Employed   | No            |
| 3   | Bad            | High   | Unemployed | No            |
| 4   | Good           | Low    | Unemployed | No            |
| 5   | Bad            | Low    | Employed   | Yes           |
| 6   | Good           | High   | Employed   | Yes           |
| 7   | Bad            | Low    | Employed   | No            |
| 8   | Good           | Low    | Unemployed | No            |
| 9   | Good           | High   | Unemployed | Yes           |
| 10  | Bad            | High   | Employed   | No            |

### **Goal:**
We want to predict whether a customer will get their **loan approved** (Yes/No) based on their **Credit History**, **Income**, and **Employment** status.

# 🧠 Solution 🌳

### **Step 1: Calculate Entropy of the Entire Dataset**

The target attribute **Loan Approval** has:
- **Yes** = 4 instances
- **No** = 6 instances
- **Total number of instances** = 10

#### **Entropy Formula:**
$\text{Entropy}(S) = -p_+ \log_2(p_+) - p_- \log_2(p_-)$

Where:
- $( p_+ = \frac{4}{10} = 0.4 )$
- $( p_- = \frac{6}{10} = 0.6 )$

#### **Entropy Calculation:**
$\text{Entropy}(S) = -0.4 \log_2(0.4) - 0.6 \log_2(0.6) \approx 0.971$

---

### **Step 2: Calculate Information Gain for Each Attribute**

#### **Attribute: Credit History**

**Split the dataset based on Credit History (Good, Bad):**

- **Good Credit History (6 instances)**:
  - Yes = 3, No = 3
  - **Entropy**:
    $\text{Entropy} = -\frac{3}{6} \log_2\left(\frac{3}{6}\right) - \frac{3}{6} \log_2\left(\frac{3}{6}\right) = 1$

- **Bad Credit History (4 instances)**:
  - Yes = 1, No = 3
  - **Entropy**:
    $\text{Entropy} = -\frac{1}{4} \log_2\left(\frac{1}{4}\right) - \frac{3}{4} \log_2\left(\frac{3}{4}\right) \approx 0.811$

**Weighted Entropy for Credit History:**
$\text{Entropy}_{\text{Credit History}} = \frac{6}{10}(1) + \frac{4}{10}(0.811) = 0.924$

**Information Gain for Credit History:**
$\text{Gain(Credit History)} = 0.971 - 0.924 = 0.047$

---

#### **Attribute: Income**

**Split the dataset based on Income (High, Low):**

- **High Income (5 instances)**:
  - Yes = 3, No = 2
  - **Entropy**:
    $\text{Entropy} = -\frac{3}{5} \log_2\left(\frac{3}{5}\right) - \frac{2}{5} \log_2\left(\frac{2}{5}\right) \approx 0.971$

- **Low Income (5 instances)**:
  - Yes = 1, No = 4
  - **Entropy**:
    $\text{Entropy} = -\frac{1}{5} \log_2\left(\frac{1}{5}\right) - \frac{4}{5} \log_2\left(\frac{4}{5}\right) \approx 0.7219$

**Weighted Entropy for Income:**
$\text{Entropy}_{\text{Income}} = \frac{5}{10}(0.971) + \frac{5}{10}(0.7219) = 0.846$

**Information Gain for Income:**
$\text{Gain(Income)} = 0.971 - 0.846 = 0.125$

---

#### **Attribute: Employment**

**Split the dataset based on Employment (Employed, Unemployed):**

- **Employed (6 instances)**:
  - Yes = 2, No = 4
  - **Entropy**:
    $\text{Entropy} = -\frac{2}{6} \log_2\left(\frac{2}{6}\right) - \frac{4}{6} \log_2\left(\frac{4}{6}\right) \approx 0.918$

- **Unemployed (4 instances)**:
  - Yes = 2, No = 2
  - **Entropy**:
    $\text{Entropy} = -\frac{2}{4} \log_2\left(\frac{2}{4}\right) - \frac{2}{4} \log_2\left(\frac{2}{4}\right) = 1$

**Weighted Entropy for Employment:**
$\text{Entropy}_{\text{Employment}} = \frac{6}{10}(0.918) + \frac{4}{10}(1) = 0.95$

**Information Gain for Employment:**
$\text{Gain(Employment)} = 0.971 - 0.95 = 0.021$

---

### **Step 3: Select the Best Attribute**

Now we have the information gain for each attribute:

- **Credit History**: 0.047
- **Income**: 0.125
- **Employment**: 0.021

The attribute with the highest information gain is **Income**.

---

### **Step 4: Create the Decision Node**

Since **Income** has the highest information gain, we split the dataset on **Income**.

#### If **Income** is **High**, check **Credit History**:
- If **Good Credit History**, approve the loan (**Yes**).
- If **Bad Credit History**, do not approve the loan (**No**).

#### If **Income** is **Low**, do not approve the loan (**No**).
```sql
Final Decision Tree:
                [Income]
               /       \
          High         Low
          /  \          |
   Good Credit  Bad Credit  No
       /    \
     Yes    No

```
### 🧠 Conclusion of the Decision Tree 🌳

- **If the Income is High**, we check the **Credit History**:
  - **If the Credit History is Good**, **approve the loan**.
  - **If the Credit History is Bad**, **do not approve the loan**.

- **If the Income is Low**, **do not approve the loan**.


---
# 🧠 Frequent Itemsets and Association Rules using Apriori Algorithm 🌟

### **Problem Statement:**
We want to analyze a small set of transactions in a retail store. The goal is to find **frequent itemsets** and generate **association rules** using the **Apriori algorithm**.

### **Dataset:**

| Transaction ID | Items Purchased                   |
|----------------|------------------------------------|
| 1              | Milk, Bread, Butter               |
| 2              | Milk, Bread                       |
| 3              | Milk, Butter                      |
| 4              | Bread, Butter                     |
| 5              | Milk, Bread, Butter, Cheese       |

### **Goal:**
Apply the **Apriori algorithm** to find frequent itemsets and generate association rules from this dataset. We will use minimum support and minimum confidence thresholds to identify strong rules.

### **Step 1: Define Minimum Support and Confidence**
- **Minimum Support (50%)**: A frequent itemset must appear in at least 50% of the transactions.
- **Minimum Confidence (70%)**: A rule must have at least 70% confidence to be considered strong.

---

### **Step 2: Calculate Support for Each Itemset**
Let’s calculate the support for the 1-itemsets (individual items):

- **Milk** appears in 4 transactions (T1, T2, T3, T5) → **Support(Milk)** = 4/5 = 0.80
- **Bread** appears in 4 transactions (T1, T2, T4, T5) → **Support(Bread)** = 4/5 = 0.80
- **Butter** appears in 4 transactions (T1, T3, T4, T5) → **Support(Butter)** = 4/5 = 0.80
- **Cheese** appears in 1 transaction (T5) → **Support(Cheese)** = 1/5 = 0.20

---

**Frequent 1-itemsets (with support ≥ 50%)**:  
- Milk, Bread, Butter

**Discarded Itemset**:  
- Cheese (Support = 0.20, which is less than 50%)

---

### **Step 3: Generate Candidate 2-itemsets and Calculate Support**
Now, let's generate candidate 2-itemsets (combinations of two items) and calculate their support:

- **{Milk, Bread}** appears in 3 transactions (T1, T2, T5) → **Support(Milk, Bread)** = 3/5 = 0.60
- **{Milk, Butter}** appears in 3 transactions (T1, T3, T5) → **Support(Milk, Butter)** = 3/5 = 0.60
- **{Bread, Butter}** appears in 3 transactions (T1, T4, T5) → **Support(Bread, Butter)** = 3/5 = 0.60

---

**Frequent 2-itemsets (with support ≥ 50%)**:  
- {Milk, Bread}, {Milk, Butter}, {Bread, Butter}

---

### **Step 4: Generate Association Rules**
Now, let’s generate association rules with confidence ≥ 70%.

#### Rule 1: **{Milk} → {Bread}**
- **Support(Milk, Bread)** = 0.60
- **Support(Milk)** = 0.80
- **Confidence(Milk ⇒ Bread)** = $(\frac{0.60}{0.80} = 0.75)$ or 75%

**Interpretation**: 75% of the people who bought Milk also bought Bread. Since the confidence is greater than 70%, this is a valid rule.

#### Rule 2: **{Bread} → {Milk}**
- **Support(Milk, Bread)** = 0.60
- **Support(Bread)** = 0.80
- **Confidence(Bread ⇒ Milk)** = $(\frac{0.60}{0.80} = 0.75)$ or 75%

**Interpretation**: 75% of the people who bought Bread also bought Milk. This is also a valid rule.

#### Rule 3: **{Milk} → {Butter}**
- **Support(Milk, Butter)** = 0.60
- **Support(Milk)** = 0.80
- **Confidence(Milk ⇒ Butter)** = $(\frac{0.60}{0.80} = 0.75)$ or 75%

**Interpretation**: 75% of the people who bought Milk also bought Butter. This is another valid rule.

#### Rule 4: **{Butter} → {Milk}**
- **Support(Milk, Butter)** = 0.60
- **Support(Butter)** = 0.80
- **Confidence(Butter ⇒ Milk)** = $(\frac{0.60}{0.80} = 0.75)$ or 75%

**Interpretation**: 75% of the people who bought Butter also bought Milk. This is also a valid rule.

---

### **Step 5: Calculate Lift for the Rules**

#### For Rule 1: **{Milk} → {Bread}**
$\text{Lift(Milk ⇒ Bread)} = \frac{\text{Confidence(Milk ⇒ Bread)}}{\text{Support(Bread)}} = \frac{0.75}{0.80} = 0.9375$

**Interpretation**: Lift = 0.9375 means that buying Milk increases the likelihood of buying Bread by 93.75% compared to random chance.

#### For Rule 2: **{Bread} → {Milk}**
$\text{Lift(Bread ⇒ Milk)} = \frac{\text{Confidence(Bread ⇒ Milk)}}{\text{Support(Milk)}} = \frac{0.75}{0.80} = 0.9375$

#### For Rule 3: **{Milk} → {Butter}**
$\text{Lift(Milk ⇒ Butter)} = \frac{\text{Confidence(Milk ⇒ Butter)}}{\text{Support(Butter)}} = \frac{0.75}{0.80} = 0.9375$

#### For Rule 4: **{Butter} → {Milk}**
$\text{Lift(Butter ⇒ Milk)} = \frac{\text{Confidence(Butter ⇒ Milk)}}{\text{Support(Milk)}} = \frac{0.75}{0.80} = 0.9375$

---

### **Summary of Frequent Itemsets and Association Rules:**

#### **Frequent 1-itemsets**:
- Milk, Bread, Butter

#### **Frequent 2-itemsets**:
- {Milk, Bread}, {Milk, Butter}, {Bread, Butter}

#### **Association Rules (with confidence ≥ 70%)**:
- Milk → Bread (Confidence = 75%)
- Bread → Milk (Confidence = 75%)
- Milk → Butter (Confidence = 75%)
- Butter → Milk (Confidence = 75%)

#### **Lift for all rules**:
- Lift = 0.9375 for all the rules.

---



# 🧠 Decision Tree Dataset for ID3 Algorithm 🌳

### **Dataset:**

| ID  | Age    | Income | Marital Status | Location | Previous Purchases | Purchase Decision |
|-----|--------|--------|----------------|----------|--------------------|-------------------|
| 1   | Young  | Low    | Single         | Urban    | Yes                | No                |
| 2   | Young  | Low    | Single         | Rural    | Yes                | No                |
| 3   | Middle | Medium | Married        | Urban    | Yes                | Yes               |
| 4   | Old    | High   | Married        | Rural    | No                 | Yes               |
| 5   | Old    | High   | Single         | Urban    | No                 | No                |
| 6   | Middle | Low    | Married        | Rural    | Yes                | Yes               |
| 7   | Young  | High   | Single         | Rural    | No                 | No                |
| 8   | Old    | Medium | Married        | Urban    | Yes                | Yes               |
| 9   | Middle | High   | Married        | Urban    | No                 | Yes               |
| 10  | Young  | Medium | Single         | Rural    | Yes                | No                |

### **Goal:**
We need to build a decision tree using the **ID3 algorithm** to predict whether a customer will **Purchase** or not, based on the attributes:
- **Age**
- **Income**
- **Marital Status**
- **Location**
- **Previous Purchases**

---

# 🧠 Frequent Itemsets and Association Rules using Apriori Algorithm 🌟

### **Problem Statement:**
Imagine a retail store that sells various items to customers. We want to find **frequent itemsets** and generate **association rules** that tell us which items are frequently bought together. This can help the store in bundling products for promotion or display.

### **Dataset:**
We have a transaction dataset with customer purchases.

| Transaction ID | Items Purchased                   |
|----------------|------------------------------------|
| 1              | Milk, Bread, Butter               |
| 2              | Bread, Butter, Cheese             |
| 3              | Milk, Bread, Butter, Cheese, Apple|
| 4              | Milk, Bread, Butter, Cheese       |
| 5              | Milk, Bread, Apple                |
| 6              | Milk, Butter, Cheese              |
| 7              | Bread, Butter                     |
| 8              | Bread, Butter, Apple              |
| 9              | Milk, Cheese, Apple               |
| 10             | Bread, Milk, Butter, Cheese, Apple|

### **Goal:**
We want to apply the **Apriori algorithm** to find **frequent itemsets** and generate **association rules** from this dataset. We will set the minimum support and minimum confidence thresholds to identify strong rules.
