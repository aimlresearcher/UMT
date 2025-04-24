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
