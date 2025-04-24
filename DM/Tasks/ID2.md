# 🧠 ID3 Algorithm for Decision Tree Construction 🌳

The ID3 (Iterative Dichotomiser 3) algorithm is used for generating decision trees by selecting attributes that maximize information gain (i.e., minimizing entropy).

## 🔑 Algorithm:

### Input:
- A dataset **𝐷** consisting of examples and attributes.
- A target attribute **𝑇** (e.g., "PlayTennis").
- A list of attributes to be considered for splitting.

### Output:
- A decision tree that can classify new instances.

## 🔄 Steps:

### 1. Check if All Examples Have the Same Class
If all examples in the dataset **𝐷** belong to the same class, then return a leaf node with that class label.  
**Stopping condition 1**: If all examples belong to the same class, stop and return the class label.

### 2. Check if the Dataset is Empty
If the dataset **𝐷** is empty, return a leaf node with the majority class label.  
**Stopping condition 2**: If there are no examples left, stop and return the majority class label.

### 3. Select the Best Attribute to Split On
- Calculate information gain for each attribute in the dataset **𝐷**.
- Use the attribute with the highest information gain (i.e., the one that reduces entropy the most) to split the dataset.

#### Information Gain formula:
$\text{Gain}(𝐷,𝐴) = \text{Entropy}(𝐷) - \sum_{𝑣 \in \text{Values}(𝐴)} \frac{|𝐷_{𝑣}|}{|𝐷|} \cdot \text{Entropy}(𝐷_{𝑣})$

Where:
- **𝐷𝑣** is the subset of **𝐷** where attribute **𝐴 = 𝑣**
- **Values(𝐴)** is the set of all possible values for attribute **𝐴**
- **|𝐷𝑣|** is the number of instances in **𝐷𝑣**

### 4. Create a Decision Node
- Create a decision node based on the best attribute chosen in Step 3.
- The decision node will have branches corresponding to the possible values of the selected attribute.

### 5. Split the Dataset
- For each value **𝑣** of the selected attribute, create a subset of the dataset **𝐷𝑣** where the attribute has the value **𝑣**.
- Recursively call the ID3 algorithm on each subset **𝐷𝑣** with the remaining attributes.

### 6. Repeat the Process
Repeat steps 1-5 for each subset until one of the stopping conditions is met:
- All examples in a subset belong to the same class.
- There are no more attributes left to split on.
- The dataset is empty (return the majority class).

### 7. Return the Tree
Once the tree is fully constructed, return the complete decision tree with all decision nodes and leaf nodes.
# 🐍 Complete Python Code for ID3 Algorithm 🌳

```python
import math
from collections import Counter

# Step 1: Calculate entropy of a dataset
def entropy(data):
    labels = [row[-1] for row in data]  # The target attribute (class)
    total = len(labels)
    counts = Counter(labels)
    return -sum((count / total) * math.log2(count / total) for count in counts.values())

# Step 2: Calculate information gain for an attribute
def info_gain(data, attr_index):
    total_entropy = entropy(data)
    attr_values = {}
    
    # Split data based on the attribute values
    for row in data:
        key = row[attr_index]
        attr_values.setdefault(key, []).append(row)
    
    # Calculate weighted entropy for each subset
    weighted_entropy = sum(
        (len(subset) / len(data)) * entropy(subset)
        for subset in attr_values.values()
    )
    
    # Information Gain is the reduction in entropy
    return total_entropy - weighted_entropy

# Step 3: ID3 Algorithm
def id3(data, attributes, target_index):
    labels = [row[target_index] for row in data]
    
    # Case 1: If all examples have the same label
    if labels.count(labels[0]) == len(labels):
        return labels[0]
    
    # Case 2: If there are no attributes left, return majority class
    if not attributes:
        return Counter(labels).most_common(1)[0][0]
    
    # Find best attribute (the one with highest information gain)
    gains = [(attr, info_gain(data, attr)) for attr in attributes]
    best_attr = max(gains, key=lambda x: x[1])[0]
    
    tree = {f"Attr {best_attr}": {}}
    
    # Split data on best attribute
    attr_values = {}
    for row in data:
        key = row[best_attr]
        attr_values.setdefault(key, []).append(row)
    
    # Recursively build the tree for each value of the best attribute
    for value, subset in attr_values.items():
        new_attrs = [i for i in attributes if i != best_attr]
        tree[f"Attr {best_attr}"][value] = id3(subset, new_attrs, target_index)
    
    return tree

# Dataset (PlayTennis problem)
dataset = [
    ['Sunny', 'Hot', 'High', 'Weak', 'No'],
    ['Sunny', 'Hot', 'High', 'Strong', 'No'],
    ['Overcast', 'Hot', 'High', 'Weak', 'Yes'],
    ['Rain', 'Mild', 'High', 'Weak', 'Yes'],
    ['Rain', 'Cool', 'Normal', 'Weak', 'Yes'],
    ['Rain', 'Cool', 'Normal', 'Strong', 'No'],
    ['Overcast', 'Cool', 'Normal', 'Strong', 'Yes'],
    ['Sunny', 'Mild', 'High', 'Weak', 'No'],
    ['Sunny', 'Cool', 'Normal', 'Weak', 'Yes'],
    ['Rain', 'Mild', 'Normal', 'Weak', 'Yes'],
    ['Sunny', 'Mild', 'Normal', 'Strong', 'Yes'],
    ['Overcast', 'Mild', 'High', 'Strong', 'Yes'],
    ['Overcast', 'Hot', 'Normal', 'Weak', 'Yes'],
    ['Rain', 'Mild', 'High', 'Strong', 'No'],
]

# Attributes: [Outlook, Temperature, Humidity, Wind]
attributes = [0, 1, 2, 3]  # Indexes of attributes
target_index = 4  # Index of target column ('PlayTennis')

# Call ID3 algorithm
decision_tree = id3(dataset, attributes, target_index)

# Print the decision tree
print("Decision Tree:", decision_tree)
```
# 🧠 Explanation of the ID3 Algorithm Code 🌳

### Dataset:
The dataset is related to the **PlayTennis** problem and contains examples with attributes like:
- **Outlook**: The weather outlook (Sunny, Overcast, Rain)
- **Temperature**: The temperature (Hot, Mild, Cool)
- **Humidity**: The humidity level (High, Normal)
- **Wind**: The wind strength (Weak, Strong)

### Functions:

#### 1. **entropy(data)**:
   This function calculates the **entropy** of the dataset. Entropy is a measure of the disorder or impurity in the dataset. The higher the entropy, the more mixed the classes are in the data. It is used to determine how "uncertain" the data is for a specific attribute.

#### 2. **info_gain(data, attr_index)**:
   This function calculates the **information gain** for a given attribute. Information gain is used to measure how much "information" is gained by splitting the dataset based on an attribute. The attribute with the highest information gain will be selected to split the dataset in the ID3 algorithm.

#### 3. **id3(data, attributes, target_index)**:
   This is the main **ID3** function that recursively builds the decision tree:
   - It starts by checking if all examples in the dataset belong to the same class. If so, it returns that class as a leaf node.
   - If there are no attributes left to split, it returns the majority class.
   - It calculates the information gain for each attribute and selects the best one to split the dataset.
   - It then recursively calls itself to continue building the tree for each subset of data, creating decision nodes at each step.

### Target Index:
The **target index** corresponds to the last column in the dataset, which represents the target attribute. In this case, the target attribute is **PlayTennis**, indicating whether or not tennis can be played based on the other attributes (Outlook, Temperature, Humidity, Wind).

### Decision Tree Output:
The ID3 algorithm constructs a decision tree by recursively splitting the dataset based on the best attribute at each level, using information gain to make the splits. The final tree represents decisions (whether to play tennis or not) based on the values of the attributes.

For example, the decision tree might look like:

# 🧠 Sample Output of ID3 Algorithm 🌳

When you run the code, you will get a decision tree output similar to the following:

```bash
Decision Tree: {'Attr 0': {'Sunny': {'Attr 2': {'High': 'No', 'Normal': 'Yes'}}, 'Overcast': 'Yes', 'Rain': {'Attr 3': {'Weak': 'Yes', 'Strong': 'No'}}}}
```
### 🧠 Decision Tree Explanation 🌳

### This tree means:

1. **If Outlook is Sunny**, check **Humidity**:
   - **If High**, the prediction is **No** (i.e., do not play tennis).
   - **If Normal**, the prediction is **Yes** (i.e., play tennis).

2. **If Outlook is Overcast**, the prediction is always **Yes** (i.e., play tennis).

3. **If Outlook is Rain**, check **Wind**:
   - **If Weak**, the prediction is **Yes** (i.e., play tennis).
   - **If Strong**, the prediction is **No** (i.e., do not play tennis).
---
# 🧠 Key Concepts in ID3 Algorithm 🌳

### 1. **Entropy**
**Definition:**  
Entropy is a measure of uncertainty, impurity, or disorder in a dataset. It tells us how mixed the classes are within a dataset.

**Mathematically:**
$\text{Entropy}(S) = -\sum_{i=1}^{n} p_i \log_2(p_i)$

Where:
- **S** is the dataset
- **p_i** is the proportion of examples belonging to class **i**
- **n** is the number of classes

**Interpretation:**
- **Entropy = 0** → Pure set (all instances belong to the same class)
- **Entropy = 1** → Maximally impure set (equal distribution between classes)

---

### 2. **Information Gain**
**Definition:**  
Information Gain measures the reduction in entropy after a dataset is split on a particular attribute. It tells us how well an attribute separates the data based on the target class.

**Mathematically:**
$\text{Information Gain}(S, A) = \text{Entropy}(S) - \sum_{v \in \text{Values}(A)} \frac{|S_v|}{|S|} \cdot \text{Entropy}(S_v)$

Where:
- **S**: Entire dataset
- **A**: Attribute
- **v**: A value of attribute **A**
- **S_v**: Subset of **S** where attribute **A = v**

**Interpretation:**
- **Higher Information Gain** → Attribute **A** provides more information about the target class.

The **ID3** algorithm selects the attribute with the highest information gain for splitting.

---
# Example 01
# 🧠 ID3 Algorithm Calculation for Weather Dataset 🌳

### Step 1: Calculate Entropy of the Entire Dataset
We have 14 instances in the dataset with the target attribute **PlayTennis** having:
- **Yes** = 9
- **No** = 5

**Entropy Formula:**
$\text{Entropy}(S) = -p_+ \log_2(p_+) - p_- \log_2(p_-)$

Where:
- **p₋** = 9/14 (proportion of 'Yes' instances)
- **p₋** = 5/14 (proportion of 'No' instances)

**Calculation:**
$\text{Entropy}(S) = -\left(\frac{9}{14} \log_2\left(\frac{9}{14}\right) + \frac{5}{14} \log_2\left(\frac{5}{14}\right)\right) \approx 0.940$

---

### Step 2: Compute Information Gain for Each Attribute

#### **Attribute: Outlook**

**Values:**
- **Sunny**: 2 Yes, 3 No
- **Overcast**: 4 Yes, 0 No
- **Rain**: 3 Yes, 2 No

**Entropy for each subset:**

- **Sunny**:
  $\text{Entropy} = -\left(\frac{2}{5} \log_2\left(\frac{2}{5}\right) + \frac{3}{5} \log_2\left(\frac{3}{5}\right)\right) \approx 0.971$

- **Overcast**:
  $\text{Entropy} = 0 \quad (\text{Pure set, all instances are 'Yes'})$

- **Rain**:
  $\text{Entropy} = -\left(\frac{3}{5} \log_2\left(\frac{3}{5}\right) + \frac{2}{5} \log_2\left(\frac{2}{5}\right)\right) \approx 0.971$

**Weighted Entropy:**
$\text{Entropy}_{\text{Outlook}} = \frac{5}{14}(0.971) + \frac{4}{14}(0) + \frac{5}{14}(0.971) \approx 0.693$

**Information Gain (Outlook):**
$\text{Gain(Outlook)} = 0.940 - 0.693 = 0.247$

---

#### **Attribute: Temperature**

**Values:**
- **Hot**: 2 Yes, 2 No
- **Mild**: 4 Yes, 2 No
- **Cool**: 3 Yes, 1 No

**Entropy for each subset:**

- **Hot**:
  $\text{Entropy} = -\left(0.5 \log_2(0.5) + 0.5 \log_2(0.5)\right) = 1$

- **Mild**:
  $\text{Entropy} = -\left(\frac{4}{6} \log_2\left(\frac{4}{6}\right) + \frac{2}{6} \log_2\left(\frac{2}{6}\right)\right) \approx 0.918$

- **Cool**:
  $\text{Entropy} = -\left(\frac{3}{4} \log_2\left(\frac{3}{4}\right) + \frac{1}{4} \log_2\left(\frac{1}{4}\right)\right) \approx 0.811$

**Weighted Entropy:**
$\text{Entropy}_{\text{Temp}} = \frac{4}{14}(1) + \frac{6}{14}(0.918) + \frac{4}{14}(0.811) \approx 0.911$

**Information Gain (Temperature):**
$\text{Gain(Temp)} = 0.940 - 0.911 = 0.029$

---

#### **Attribute: Humidity**

**Values:**
- **High**: 3 Yes, 4 No
- **Normal**: 6 Yes, 1 No

**Entropy for each subset:**

- **High**:
  $\text{Entropy} = -\left(\frac{3}{7} \log_2\left(\frac{3}{7}\right) + \frac{4}{7} \log_2\left(\frac{4}{7}\right)\right) \approx 0.985$

- **Normal**:
  $\text{Entropy} = -\left(\frac{6}{7} \log_2\left(\frac{6}{7}\right) + \frac{1}{7} \log_2\left(\frac{1}{7}\right)\right) \approx 0.591$

**Weighted Entropy:**
$\text{Entropy}_{\text{Humidity}} = \frac{7}{14}(0.985) + \frac{7}{14}(0.591) \approx 0.788$

**Information Gain (Humidity):**
$\text{Gain(Humidity)} = 0.940 - 0.788 = 0.152$

---

#### **Attribute: Wind**

**Values:**
- **Weak**: 6 Yes, 2 No
- **Strong**: 3 Yes, 3 No

**Entropy for each subset:**

- **Weak**:
  $\text{Entropy} = -\left(\frac{6}{8} \log_2\left(\frac{6}{8}\right) + \frac{2}{8} \log_2\left(\frac{2}{8}\right)\right) \approx 0.811$

- **Strong**:
  $\text{Entropy} = -\left(\frac{3}{6} \log_2\left(\frac{3}{6}\right) + \frac{3}{6} \log_2\left(\frac{3}{6}\right)\right) = 1$

**Weighted Entropy:**
$\text{Entropy}_{\text{Wind}} = \frac{8}{14}(0.811) + \frac{6}{14}(1) \approx 0.892$

**Information Gain (Wind):**
$\text{Gain(Wind)} = 0.940 - 0.892 = 0.048$

---

### Step 3: Select Attribute with Highest Gain
- **Outlook**: 0.247 (Highest)
- **Humidity**: 0.152
- **Wind**: 0.048
- **Temperature**: 0.029

**Root Node**: **Outlook**

---

Now, recursively apply ID3 to branches: **Sunny**, **Overcast**, and **Rain**.

# 🧠 ID3 Algorithm – Decision Tree Construction (Continued) 🌳

### Branch 1: **Outlook = Sunny**
Subset of data:

| Day  | Outlook | Temperature | Humidity | Wind   | PlayTennis |
|------|---------|-------------|----------|--------|------------|
| D1   | Sunny   | Hot         | High     | Weak   | No         |
| D2   | Sunny   | Hot         | High     | Strong | No         |
| D8   | Sunny   | Mild        | High     | Weak   | No         |
| D9   | Sunny   | Cool        | Normal   | Weak   | Yes        |
| D11  | Sunny   | Mild        | Normal   | Strong | Yes        |

**Yes = 2**, **No = 3**

**Entropy Calculation:**
$\text{Entropy} = -\frac{2}{5} \log_2\left(\frac{2}{5}\right) - \frac{3}{5} \log_2\left(\frac{3}{5}\right) \approx 0.971$

Now, compute the gain for remaining attributes in this subset.

#### 1. **Humidity**
| Humidity | Yes | No |
|----------|-----|----|
| High     | 0   | 3  |
| Normal   | 2   | 0  |

**Entropy Calculation for each subset:**

- **High**: Entropy = 0 (pure set)
- **Normal**: Entropy = 0 (pure set)

**Weighted Entropy**:
$\text{Entropy}_{\text{Humidity}} = 0$

**Information Gain (Humidity)**:
$\text{Gain(Humidity)} = 0.971 - 0 = 0.971$

✅ **Best Attribute = Humidity**

**Split on Humidity:**
- If **Humidity = High** → **No**
- If **Humidity = Normal** → **Yes**

This branch is complete.

---

### Branch 2: **Outlook = Overcast**
Subset of data:

| Day  | Outlook  | Temperature | Humidity | Wind   | PlayTennis |
|------|----------|-------------|----------|--------|------------|
| D3   | Overcast | Hot         | High     | Weak   | Yes        |
| D7   | Overcast | Cool        | Normal   | Strong | Yes        |
| D12  | Overcast | Mild        | High     | Strong | Yes        |
| D13  | Overcast | Hot         | Normal   | Weak   | Yes        |

**All values are Yes**, so:

**Entropy = 0**

**Leaf Node = Yes**

✅ **This branch is complete.**

---

### Branch 3: **Outlook = Rain**
Subset of data:

| Day  | Outlook | Temperature | Humidity | Wind   | PlayTennis |
|------|---------|-------------|----------|--------|------------|
| D4   | Rain    | Mild        | High     | Weak   | Yes        |
| D5   | Rain    | Cool        | Normal   | Weak   | Yes        |
| D6   | Rain    | Cool        | Normal   | Strong | No         |
| D10  | Rain    | Mild        | Normal   | Weak   | Yes        |
| D14  | Rain    | Mild        | High     | Strong | No         |

**Yes = 3**, **No = 2**

**Entropy Calculation:**
$\text{Entropy} = -\frac{3}{5} \log_2\left(\frac{3}{5}\right) - \frac{2}{5} \log_2\left(\frac{2}{5}\right) \approx 0.971$

#### 1. **Wind**
| Wind  | Yes | No |
|-------|-----|----|
| Weak  | 3   | 0  |
| Strong| 0   | 2  |

**Entropy Calculation for each subset:**

- **Weak**: Entropy = 0 (pure set)
- **Strong**: Entropy = 0 (pure set)

**Weighted Entropy**:
$\text{Entropy}_{\text{Wind}} = 0$

**Information Gain (Wind)**:
$\text{Gain(Wind)} = 0.971 - 0 = 0.971$

✅ **Best Attribute = Wind**

**Split on Wind:**
- If **Wind = Weak** → **Yes**
- If **Wind = Strong** → **No**

✅ **This branch is complete.**

---

### Final Decision Tree:
```python
                [Outlook]
               /    |     \
          Sunny  Overcast  Rain
           /         |       \
    [Humidity]     Yes     [Wind]
     /     \                /    \
  High   Normal         Weak    Strong
   No      Yes           Yes      No
```
