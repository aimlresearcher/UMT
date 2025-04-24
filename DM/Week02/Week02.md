## 🗓️ Week 02: Basic Statistical Descriptions of Data

### 1. 🎯 Learning Objectives  
By the end of this week, students will be able to:  
- Understand and apply basic statistical measures to describe data.  
- Use descriptive statistics to summarize datasets.  
- Recognize the importance of statistical analysis in data mining.

---

### 2. 📘 Topics Covered

#### 2.1 Overview of Descriptive Statistics  
- Definition and importance in data mining.  
- Role in understanding and summarizing large datasets.

#### 2.2 Measures of Central Tendency  
- **Mean (average):** The sum of all values divided by the count.  
- **Median:** The middle value when the data is sorted.  
- **Mode:** The most frequently occurring value.

#### 2.3 Measures of Dispersion  
- **Range:** Difference between the maximum and minimum values.  
- **Variance:** Measure of how data points spread around the mean.  
- **Standard Deviation:** The square root of variance, representing average deviation from the mean.

#### 2.4 Shape of Data Distribution  
- **Skewness:** Measure of the asymmetry of data.  
- **Kurtosis:** Measure of the "tailedness" or outlier presence in data.

#### 2.5 Data Visualization Techniques  
- **Histograms:** Display frequency distributions.  
- **Box Plots:** Show the spread and identify outliers.  
- **Scatter Plots:** Visualize relationships between two variables.

#### 2.6 Handling Missing Data and Outliers  
- Techniques for identifying and handling missing values (e.g., imputation).  
- Methods for detecting and treating outliers (e.g., Z-scores, IQR).

---

### 3. 📝 In-Class Activities

#### 3.1 Discussion:  
- Discuss how descriptive statistics help in data mining.  
  **Example:** "Why is it important to know the mean vs. the median for income data?"

#### 3.2 Think-Pair-Share:  
- Students analyze a sample dataset and calculate the mean, median, and mode for key attributes (e.g., age, income, etc.).  
- Share findings with a partner and compare results.

#### 3.3 Quick Quiz:  
- Multiple choice or short-answer questions to assess students' understanding of central tendency, dispersion, and skewness.

---

### 4. 📤 Assigned Tasks

#### 4.1 Homework Assignment (HW-1):  
- Given a dataset (provided in class or through LMS), calculate and interpret basic statistics: mean, median, mode, standard deviation, variance, and range.  
- Visualize the data using histograms or box plots.

#### 4.2 Self-Study:  
- Explore the concept of normal distribution and standardization of data for future mining tasks.  
- Read about how data normalization impacts algorithms like k-NN and clustering.

---

### 5. 🔗 Course Mapping

**CLOs Targeted:**  
CLO 1 – *Evaluate and implement a wide range of emerging methodologies to facilitate knowledge discovery.*

**Program Outcomes (PLOs) Linked:**  
- **PLO 2:** Knowledge for Solving Computing Problems  
- **PLO 3:** Problem Analysis

---
## 2.1 Overview of Descriptive Statistics

### 2.1.1 Definition and Importance in Data Mining  
**Descriptive Statistics** refers to the statistical techniques used to summarize and describe the main features of a dataset. 📊

It focuses on:
- **Central tendency** (Mean, Median, Mode) ➡️ Measures the "central" value of the data.  
- **Dispersion** (Range, Variance, Standard Deviation) ➡️ Shows how spread out the data is.  
- **Distribution** (Skewness, Kurtosis) ➡️ Helps understand the shape of the data distribution (e.g., normal or skewed).  

In data mining, descriptive statistics acts as the first step to explore and preprocess data before applying complex algorithms. 🔍

It simplifies large datasets into understandable summaries, making it easier to detect trends, outliers, and relationships within the data. 🧠

---

### 2.1.2 Role in Understanding and Summarizing Large Datasets  
With big data, raw data often becomes overwhelming and difficult to interpret. 💾

Descriptive statistics helps to:
- Provide a quick overview of the data. ✅  
- Identify patterns, such as whether data is skewed or normally distributed. 📈  
- Reduce dimensionality by summarizing key measures (mean, variance, etc.). 🧳  
- Help data miners focus on important trends and outliers that can guide further analysis. 🎯  

**Example:**  
Knowing the mean of a large dataset can give an overall sense of what the "typical" value is, while the variance can indicate how spread out the data is. 📉

---

## 2.2 Measures of Central Tendency

Measures of central tendency are statistical metrics used to identify a single value that represents the center or typical value of a dataset. These measures help in summarizing the data by identifying the central point around which the data tends to cluster. 🎯

---

### 2.2.1 Mean (Average)  
**Definition:**  
The mean is the sum of all values in the dataset divided by the total number of values.  

$\text{Mean} = \frac{\sum x_i}{n}$
Where:
- $x_i$ represents each individual value, and  
- $n$ is the total number of values.  

**Example:**  
Consider the dataset: [2, 4, 6, 8, 10].  
$\text{Mean} = \frac{(2 + 4 + 6 + 8 + 10)}{5} = 6$

**Importance:**  
The mean gives a general idea of the average value of the data. However, it can be sensitive to outliers, meaning extreme values can skew the result. ⚖️

---

### 2.2.2 Median  
**Definition:**  
The median is the middle value of a dataset when the data is sorted in ascending or descending order. If the number of observations is odd, the median is the middle value; if even, it is the average of the two middle values.

**Example 1 (Odd Number of Values):**  
Dataset: [1, 3, 5, 7, 9]  
Median = 5 (the middle value)

**Example 2 (Even Number of Values):**  
Dataset: [1, 3, 5, 7, 9, 11]  
Median = (5 + 7) / 2 = 6

**Importance:**  
The median is particularly useful when the dataset has outliers because it is not affected by extreme values like the mean. It represents the middle point of the data distribution. 🛡️

---

### 2.2.3 Mode  
**Definition:**  
The mode is the value that appears most frequently in the dataset. A dataset may have:
- **No mode** (if no number repeats),
- **One mode** (unimodal),
- **Two modes** (bimodal),
- **Multiple modes** (multimodal).

**Example 1 (Unimodal):**  
Dataset: [2, 4, 4, 6, 8]  
Mode = 4 (appears most frequently)

**Example 2 (Bimodal):**  
Dataset: [1, 1, 2, 3, 3, 4]  
Mode = 1 and 3 (both appear twice)

**Importance:**  
The mode is useful for identifying the most common value in a dataset, especially for categorical data. It’s less sensitive to extreme values than the mean and is often used in surveys or market research to find common preferences. 🏅

---

### Summary of When to Use:
- **Mean** is best for symmetric distributions without extreme values.  
- **Median** is better when the data has outliers or is skewed.  
- **Mode** is useful when identifying the most frequent occurrence in the dataset.

---

## 2.3 Measures of Dispersion

Measures of dispersion describe the spread or variability of data points in a dataset. These measures help in understanding how much the data deviates from the center (mean, median, etc.). High dispersion means data is spread out, while low dispersion means data is clustered around the central value. 📉

---

### 2.3.1 Range  
**Definition:**  
The range is the difference between the maximum and minimum values in the dataset. It provides a quick estimate of the spread of data.

$\text{Range} = \text{Maximum Value} - \text{Minimum Value}$

**Example:**  
Dataset: [5, 12, 8, 19, 3]  
Range = 19 - 3 = 16

**Importance:**  
The range is the simplest measure of dispersion. However, it can be sensitive to outliers. A single extreme value can significantly affect the range, providing a distorted view of the spread. ⚠️

---

### 2.3.2 Variance  
**Definition:**  
Variance is a measure of how far the data points are spread out from the mean. It is calculated as the average squared deviation from the mean.

$\text{Variance} = \frac{1}{n} \sum_{i=1}^{n} (x_i - \mu)^2$

Where:
- $x_i$ is each data point,
- $\mu$ is the mean,
- $n$ is the number of data points.

**Example:**  
Dataset: [2, 4, 6, 8, 10]  
Mean = (2 + 4 + 6 + 8 + 10) / 5 = 6  
Variance = $(\frac{(2-6)^2 + (4-6)^2 + (6-6)^2 + (8-6)^2 + (10-6)^2}{5})$  
Variance = $(\frac{16 + 4 + 0 + 4 + 16}{5} = 8)$

**Importance:**  
Variance is important because it quantifies the degree of spread in the dataset. However, because it involves squaring the differences, it is in squared units, which can make it less intuitive. 🔢

---

### 2.3.3 Standard Deviation  
**Definition:**  
The standard deviation is the square root of the variance. It represents the average distance between each data point and the mean, expressed in the original units of the data.

$\text{Standard Deviation} = \sqrt{\text{Variance}}$

**Example:**  
From the previous variance calculation (Variance = 8),  
Standard Deviation = $(\sqrt{8} \approx 2.83)$

**Importance:**  
The standard deviation is widely used because it is in the same units as the original data and provides a more intuitive understanding of data variability. A larger standard deviation indicates more spread-out data, while a smaller one indicates data points are clustered around the mean. 📏

---

### Summary of When to Use:
- **Range** is simple and fast but sensitive to outliers.  
- **Variance** gives a mathematical measure of dispersion but is in squared units, making it less interpretable.  
- **Standard Deviation** is the most commonly used measure of dispersion because it is in the same units as the data and easier to interpret. 🏆

---

## 2.4 Shape of Data Distribution

The shape of a data distribution describes the way the data is distributed along the range of values. Understanding the shape helps in identifying underlying patterns, outliers, and determining the appropriateness of different data mining algorithms. The two key aspects of a distribution's shape are **skewness** and **kurtosis**. 📊

---

### 2.4.1 Skewness  
**Definition:**  
Skewness measures the asymmetry of the data distribution. A distribution is considered skewed if it is not symmetric, meaning it has a long tail on one side.

- **Positive Skew (Right Skew):** The right tail (larger values) is longer or fatter than the left tail. ➡️  
- **Negative Skew (Left Skew):** The left tail (smaller values) is longer or fatter than the right tail. ⬅️  
- **Zero Skew (Symmetric):** The distribution is balanced with tails of equal length on both sides (e.g., normal distribution). ⚖️

**Formula for Skewness:**

$\text{Skewness} = \frac{n(n-1)}{(n-2)} \sum_{i=1}^{n} \left( \frac{x_i - \bar{x}}{s} \right)^3$

Where:
- $x_i$ are the data points,  
- $\bar{x}$ is the mean,  
- $s$ is the standard deviation, and  
- $n$ is the number of data points.

**Example:**  
- **Positive Skew:** Income distribution where most people earn a lower salary, but a few earn very high salaries. 💰  
- **Negative Skew:** A test score distribution where most students score high, but a few have very low scores. 📉

**Significance:**  
- **Positive Skew:** Data may need logarithmic transformation for normality in algorithms that assume symmetry (e.g., linear regression).  
- **Negative Skew:** Indicates a concentration of values at the higher end. 🔼

---

### 2.4.2 Kurtosis  
**Definition:**  
Kurtosis measures the tailedness of the distribution, indicating the presence of outliers and how extreme the outliers are. It tells you whether the data distribution is:

- **Leptokurtic:** High kurtosis, indicating heavy tails or more outliers. 🔥  
- **Platykurtic:** Low kurtosis, indicating light tails or fewer outliers. 🌬️  
- **Mesokurtic:** Normal distribution with kurtosis similar to that of the standard normal distribution. ⚪

**Formula for Kurtosis:**

$\text{Kurtosis} = \frac{n(n+1)}{(n-1)(n-2)(n-3)} \sum_{i=1}^{n} \left( \frac{x_i - \bar{x}}{s} \right)^4 - 3 \cdot \frac{(n-1)^2}{(n-2)(n-3)}$

Where:
- $x_i$ are the data points,  
- $\bar{x}$ is the mean,  
- $s$ is the standard deviation, and  
- $n$ is the number of data points.

**Example:**  
- **Leptokurtic:** A dataset with extreme values like a stock market return where large fluctuations are common. 📈  
- **Platykurtic:** A dataset with few outliers, like heights of adults in a population where extreme values are rare. 🚶‍♂️

**Significance:**  
- **High Kurtosis (Leptokurtic):** Indicates that the data has heavy tails, which means more extreme values than a normal distribution. 🌪️  
- **Low Kurtosis (Platykurtic):** Suggests that the data has light tails, or fewer extreme values. 🌿  
- **Normal Kurtosis (Mesokurtic):** Indicates a normal distribution, which is often assumed in many data mining algorithms (e.g., linear regression). 📊

---

### Summary:
- **Skewness** tells you about the asymmetry in the data distribution.  
  - Positive skew means the tail is stretched to the right.  
  - Negative skew means the tail is stretched to the left.  
- **Kurtosis** tells you about the outliers and the "fatness" of the tails.  
  - Leptokurtic distributions have more extreme values (outliers).  
  - Platykurtic distributions have fewer extreme values.
---
## 2.5 Data Visualization Techniques

Data visualization is an essential part of data exploration and analysis. It helps in understanding the underlying patterns, trends, and relationships within the data, providing a visual summary that aids decision-making. The following are three commonly used visualization techniques in data mining. 📊

---

### 2.5.1 Histograms  
**Definition:**  
A histogram is a graphical representation of the frequency distribution of a dataset. It displays the distribution of numerical data by dividing the data into bins (intervals) and showing how many data points fall into each bin.

**How it works:**  
- The **x-axis** represents the bins or intervals of the data.  
- The **y-axis** represents the frequency or the count of data points in each bin.

**Example:**  
Dataset: [1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 5, 6, 7, 7, 8]  
The histogram would display how many values fall into each of the defined bins, like 1-2, 3-4, 5-6, etc.  

**Importance:**  
Histograms are particularly useful for:
- Visualizing the distribution of a dataset.  
- Understanding the central tendency, spread, and skewness of the data.  
- Identifying patterns such as normal distribution or skewness. 🔍

---

### 2.5.2 Box Plots  
**Definition:**  
A box plot (also known as a box-and-whisker plot) is a graphical representation that displays the spread and skewness of the data. It provides a summary of the dataset based on quartiles and highlights potential outliers.

**How it works:**  
- The **box** represents the interquartile range (IQR), where the middle 50% of data lies.  
- The **line** in the center of the box shows the median.  
- The **"whiskers"** extend to the minimum and maximum values that are not considered outliers.  
- **Outliers** are plotted as individual points outside the whiskers.

**Example:**  
Dataset: [2, 4, 5, 6, 7, 9, 10, 12, 13, 15]  
- The **median** is 7.  
- The **upper quartile** is 12, and the **lower quartile** is 5.  
- The whiskers show the **minimum** and **maximum** values (2 and 15).  
- Any values outside the whiskers (if present) would be outliers.

**Importance:**  
Box plots are great for:
- Summarizing data in terms of its spread and central tendency.  
- Identifying **outliers** that may distort analysis or predictions.  
- Comparing multiple distributions (when drawn side by side). 🧑‍🤝‍🧑

---

### 2.5.3 Scatter Plots  
**Definition:**  
A scatter plot is a type of graphical plot used to show the relationship between two continuous variables. Each point represents a data pair, with one variable plotted on the **x-axis** and the other on the **y-axis**.

**How it works:**  
- The **x-axis** represents one variable.  
- The **y-axis** represents the other variable.  
- Each data point is represented as a dot on the graph, where its position is determined by the values of the two variables.

**Example:**  
If you have a dataset of height (x-axis) and weight (y-axis) of individuals, a scatter plot can show how these two variables are related. 📏⚖️

**Importance:**  
Scatter plots are essential for:
- Visualizing relationships or **correlations** between two variables.  
- Identifying **linear** or **non-linear** patterns.  
- Detecting **outliers** that deviate significantly from the rest of the data. 🚨

---

### Summary of When to Use:
- **Histograms:** Best for **frequency distributions** and understanding the shape of data. 📈  
- **Box Plots:** Great for **spread**, **skewness**, and **outliers** in the data. 📦  
- **Scatter Plots:** Ideal for visualizing **relationships** between two continuous variables. 🔗
---
## 2.6 Handling Missing Data and Outliers

Handling missing data and outliers is a critical step in data preprocessing. Both can significantly affect the performance and accuracy of machine learning models. Let’s explore some common techniques for handling these issues. ⚙️

---

### 2.6.1 Techniques for Identifying and Handling Missing Data  
Missing data occurs when certain values are not available for one or more attributes in a dataset. This is common in real-world data and must be handled carefully to avoid introducing bias or inaccuracies into the analysis. ❓

#### 1.1 Identifying Missing Data  
- Missing values are often represented as NaN (Not a Number), null, or blank cells in datasets.  
- Visual tools like **heatmaps** or **missing data plots** can help in identifying which attributes or records have missing values.  
- Summary statistics (e.g., `isnull()` function in Python’s pandas) can show the count of missing data in each attribute.  

#### 1.2 Methods for Handling Missing Data  
- **Imputation:** Filling missing values with estimated ones based on existing data.  
  - **Mean/Median Imputation:** Replace missing values with the mean (for numerical data) or median (if data is skewed) of the non-missing values.  
    - Example: If a dataset has missing ages, replace missing ages with the mean age of all available ages.  
  - **Mode Imputation:** For categorical data, replace missing values with the most frequent category (mode).  
    - Example: Replace missing gender values with the most frequent gender (male or female).  
  - **KNN Imputation:** Use the k-nearest neighbors (KNN) algorithm to find the closest data points and impute missing values based on their average.  
  - **Regression Imputation:** Use regression models to predict and fill missing values.  
    - Example: Use other features (e.g., income, age) to predict and fill missing household size.

- **Deletion:** In cases where the missing data is random and the amount is small, simply deleting records or attributes with missing values can be a reasonable approach.  
  - **Listwise Deletion:** Remove the entire row if any data in the row is missing.  
  - **Pairwise Deletion:** Remove only the missing values from the analysis (for example, if a particular column is missing for one row, exclude it from only that column in further calculations).  
  - **Forward/Backward Fill:** Use the previous (backward fill) or next (forward fill) available value to fill the missing data in time-series data.  
    - Example: If a timestamp for an event is missing, you might carry forward the previous event's data.

---

### 2.6.2 Methods for Detecting and Treating Outliers  
Outliers are values that lie far outside the range of the majority of the data. They can distort statistical analyses and affect machine learning models. Identifying and treating outliers is essential to improve model accuracy. 🚨

#### 2.1 Identifying Outliers  
- **Visualization Techniques:**
  - **Box plots:** Outliers are typically represented as points outside the “whiskers” of a box plot. 📦  
  - **Scatter plots:** Outliers appear as points that fall far from the cluster of other points. 🔴

- **Statistical Methods:**
  - **Z-scores:** A Z-score measures how many standard deviations a data point is from the mean. A data point with a Z-score greater than 3 or less than -3 is typically considered an outlier.  
    - Formula:  
    $Z = \frac{(X - \mu)}{\sigma}$ 
    Where:
    - $X$ is the data point,  
    - $\mu$ is the mean, and  
    - $\sigma$ is the standard deviation.

  - **IQR (Interquartile Range):** Outliers can also be detected by the IQR, which is the range between the first quartile (Q1) and third quartile (Q3).  
    - Outliers are typically defined as values outside the range:  
      $\text{Lower bound} = Q1 - 1.5 \times IQR$  
      $\text{Upper bound} = Q3 + 1.5 \times IQR$
      - Values outside these bounds are considered outliers.

#### 2.2 Methods for Treating Outliers  
- **Removing Outliers:**  
  If the outlier is genuine, removing it is the best option to prevent skewing the data.  
  - Outliers might be erroneous data entry errors (e.g., a negative age), in which case they should be removed. ❌

- **Transforming Data:**
  - **Log Transformation:** Apply a logarithmic transformation to reduce the impact of extreme values in right-skewed data. 📉  
  - **Square Root Transformation:** For data with positive skewness, a square root transformation can help reduce the influence of large values. √
  
- **Capping (Winsorization):**  
  Capping replaces extreme values (outliers) with a value closer to the maximum or minimum that is within a specified threshold.  
    - Example: Replace any values above the 95th percentile with the value at the 95th percentile.

- **Imputation:**  
  For some datasets, you might impute missing values with the mean or median of the non-outlier data.  
    - Example: If an outlier is detected, the value can be replaced with the median value of the surrounding data.

---

### Summary:  
- **Missing Data:** Can be handled by imputation (mean, median, KNN) or deletion.  
- **Outliers:** Can be identified through Z-scores or IQR and treated by removal, transformation, or capping. 📊

---
## 1. 💬 Discussion: How Descriptive Statistics Help in Data Mining  
**Objective:**  
Facilitate a class discussion on the role of descriptive statistics in data mining. Help students recognize the importance of summarizing and understanding data before applying complex algorithms.

**Instructions:**  
- Start with a brief introduction about **descriptive statistics**: its role in summarizing and preparing data for analysis.  
- Ask students to consider different use cases for data mining and how statistics helps in each case.  

**Example Discussion Prompt:**  
"Why is it important to know the **mean** vs. the **median** when analyzing income data?"

**Key Points to Discuss:**  
- The **mean** is sensitive to outliers, so it might not reflect the typical income if there are a few extremely high earners.  
- The **median**, on the other hand, gives a better measure of central tendency when the data is skewed or has outliers.

**Real-life Example:**  
In analyzing income data, a few high-income earners can skew the average income, making it appear higher than it actually is for most people.

**Expected Outcome:**  
Students will understand that **descriptive statistics** help identify patterns and provide a clearer understanding of data distributions, which is critical in making decisions based on data. 📊

---

## 2. 🤝 Think-Pair-Share: Analyzing a Sample Dataset  
**Objective:**  
Give students hands-on experience with calculating and interpreting central tendency measures.

**Instructions:**  
- **Think (3-5 minutes):**  
  Provide a sample dataset with several key attributes (e.g., age, income, exam scores, etc.).  
  Ask students to individually calculate the **mean**, **median**, and **mode** for these attributes.  

- **Pair (5 minutes):**  
  Have students discuss their findings with a partner.  
  They should compare results and discuss why the mean, median, and mode might differ or be similar in their analysis.  

- **Share (5-10 minutes):**  
  Invite a few pairs to share their findings with the class.  
  Discuss any discrepancies and explain why the **mean** might be higher than the **median** in skewed datasets, for example.

**Expected Outcome:**  
Students practice the calculation of **mean**, **median**, and **mode**, gaining hands-on experience with central tendency measures. They will also understand the importance of choosing the right measure based on the data’s distribution. 📏

---

## 3. 📊 Quick Quiz: Assessing Understanding of Descriptive Statistics  
**Objective:**  
Test students' knowledge of central tendency, dispersion, and skewness through a short quiz.

**Instructions:**  
Conduct a multiple-choice quiz or short-answer questions to assess student comprehension of key concepts.

**Example Questions:**

**Multiple Choice Question:**  
Which measure of central tendency is least affected by extreme outliers?  
a) Mean  
b) Median  
c) Mode  
d) None of the above  
**Answer:** b) Median  

**Short-Answer Question:**  
What is the formula for calculating variance? Explain its significance in data analysis.

**Multiple Choice Question:**  
A dataset of ages is skewed to the right. Which measure of central tendency will likely be higher than the others?  
a) Mean  
b) Median  
c) Mode  
d) Standard Deviation  
**Answer:** a) Mean  

**True or False:**  
The standard deviation is the square root of the variance.  
**Answer:** True  

**Short-Answer Question:**  
What is skewness, and how does it affect data interpretation?

**Expected Outcome:**  
Students should be able to correctly identify **central tendency** and **dispersion** measures and explain key concepts like **skewness**. The quiz will reinforce theoretical knowledge and clarify any misunderstandings. 📚
---
## 1. 💬 Discussion: How Descriptive Statistics Help in Data Mining  
**Objective:**  
Facilitate a class discussion on the role of descriptive statistics in data mining. Help students recognize the importance of summarizing and understanding data before applying complex algorithms.

**Instructions:**  
- Start with a brief introduction about **descriptive statistics**: its role in summarizing and preparing data for analysis.  
- Ask students to consider different use cases for data mining and how statistics helps in each case.  

**Example Discussion Prompt:**  
"Why is it important to know the **mean** vs. the **median** when analyzing income data?"

**Key Points to Discuss:**  
- The **mean** is sensitive to outliers, so it might not reflect the typical income if there are a few extremely high earners.  
- The **median**, on the other hand, gives a better measure of central tendency when the data is skewed or has outliers.

**Real-life Example:**  
In analyzing income data, a few high-income earners can skew the average income, making it appear higher than it actually is for most people.

**Expected Outcome:**  
Students will understand that **descriptive statistics** help identify patterns and provide a clearer understanding of data distributions, which is critical in making decisions based on data. 📊

---

## 2. 🤝 Think-Pair-Share: Analyzing a Sample Dataset  
**Objective:**  
Give students hands-on experience with calculating and interpreting central tendency measures.

**Instructions:**  
- **Think (3-5 minutes):**  
  Provide a sample dataset with several key attributes (e.g., age, income, exam scores, etc.).  
  Ask students to individually calculate the **mean**, **median**, and **mode** for these attributes.  

- **Pair (5 minutes):**  
  Have students discuss their findings with a partner.  
  They should compare results and discuss why the mean, median, and mode might differ or be similar in their analysis.  

- **Share (5-10 minutes):**  
  Invite a few pairs to share their findings with the class.  
  Discuss any discrepancies and explain why the **mean** might be higher than the **median** in skewed datasets, for example.

**Expected Outcome:**  
Students practice the calculation of **mean**, **median**, and **mode**, gaining hands-on experience with central tendency measures. They will also understand the importance of choosing the right measure based on the data’s distribution. 📏

---

## 3. 📊 Quick Quiz: Assessing Understanding of Descriptive Statistics  
**Objective:**  
Test students' knowledge of central tendency, dispersion, and skewness through a short quiz.

**Instructions:**  
Conduct a multiple-choice quiz or short-answer questions to assess student comprehension of key concepts.

**Example Questions:**

**Multiple Choice Question:**  
Which measure of central tendency is least affected by extreme outliers?  
a) Mean  
b) Median  
c) Mode  
d) None of the above  
**Answer:** b) Median  

**Short-Answer Question:**  
What is the formula for calculating variance? Explain its significance in data analysis.

**Multiple Choice Question:**  
A dataset of ages is skewed to the right. Which measure of central tendency will likely be higher than the others?  
a) Mean  
b) Median  
c) Mode  
d) Standard Deviation  
**Answer:** a) Mean  

**True or False:**  
The standard deviation is the square root of the variance.  
**Answer:** True  

**Short-Answer Question:**  
What is skewness, and how does it affect data interpretation?

**Expected Outcome:**  
Students should be able to correctly identify **central tendency** and **dispersion** measures and explain key concepts like **skewness**. The quiz will reinforce theoretical knowledge and clarify any misunderstandings. 📚

---
## 📤 Assigned Tasks – Week 02

---

### 📚 Homework Assignment (HW-1)  
**Task:** Calculate and Interpret Basic Statistics  

**Dataset:**  
The dataset will be provided in class or through the LMS.  
You will be given a collection of data points (e.g., age, income, exam scores, etc.) in a structured format.

#### **Instructions:**
- **Calculate the following statistics** for each attribute in the dataset:
  - **Mean (average)**  
  - **Median**  
  - **Mode**  
  - **Standard Deviation**  
  - **Variance**  
  - **Range (maximum - minimum)**

- **Interpret the results:**
  - How do these statistics help describe the data?  
  - Are there any patterns, trends, or anomalies you observe from the calculated values?  
  - Discuss the relationship between the **mean**, **median**, and **mode**. Is the data symmetric or skewed?

- **Visualization:**
  - Visualize the dataset using:
    - **Histograms:** Display the frequency distribution for numerical data.  
    - **Box Plots:** Show the spread, quartiles, and potential outliers in the data.
  - Discuss how the visualizations help in interpreting the statistics.

#### **Submission:**  
Submit the completed assignment with your calculations, interpretations, and visualizations on the LMS or in class, as instructed. 📤

---

### 💻 Self-Study

#### **Explore the Concept of Normal Distribution**  
Study the normal distribution and its significance in data mining:  
- Understand the **bell curve shape** and its properties.  
- Learn about the **68-95-99.7 rule** (empirical rule) that states:
  - 68% of data falls within 1 standard deviation of the mean.  
  - 95% falls within 2 standard deviations.  
  - 99.7% falls within 3 standard deviations.

#### **Topics to Explore:**
- How to recognize if your data follows a normal distribution.  
- The importance of normality in data mining and machine learning algorithms.  
- **Transformations** (like log transformation) that can help make non-normal data closer to normal.

---

### **Read About Data Normalization and Its Impact**  
#### **Data Normalization:**
- Learn about **standardization** and **normalization** techniques.  
- Study how **scaling data** (e.g., z-score normalization or min-max scaling) can improve the performance of certain algorithms.

#### **Focus on the Impact of normalization on algorithms like:**
- **k-Nearest Neighbors (k-NN):** Why normalization is crucial when dealing with distance-based algorithms.  
- **Clustering (e.g., k-means):** How normalization affects the results of clustering algorithms.

#### **Recommended Reading:**  
- Refer to sections in the textbook on normalization, and scaling techniques.  
- Search online for additional resources or tutorials on the importance of normalizing data for machine learning. 🌐
