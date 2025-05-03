# 📘 Supervised Learning – Regression

## 🔎 What is Regression?

**Regression** is a type of **Supervised Learning** where:

- The **output (Y)** is a **continuous value (numerical)**.
- The model predicts a **quantity** based on **input features (X)**.

**Example**:  
🏠 Predicting house prices based on size, location, and number of rooms.

---

## 🏷 Difference Between Classification and Regression

| Task Type     | Output                  | Example                                    |
|---------------|-------------------------|-------------------------------------------|
| **Classification** | Categories / Classes       | Spam or Not Spam, Low/Medium/High            |
| **Regression**     | Continuous Values (Numbers) | Predicting house price, temperature          |

---

## 🔥 Key Terminology

| Term           | Meaning                                           |
|----------------|--------------------------------------------------|
| **Features (X)**    | Input variables or attributes.                    |
| **Target (Y)**      | Continuous output value to predict.               |
| **Training Data**   | Labeled data used to train the model.             |
| **Testing Data**    | Data used to evaluate model performance.          |
| **Regressor**       | The algorithm/model used for regression tasks.    |

---

## ⚙ How Regression Works – Workflow

1. 📥 **Collect labeled data** (input → continuous output pairs).
2. 🔎 **Select a regression algorithm** (e.g., Linear Regression).
3. 🏋️ **Train the model** to learn the relationship between X and Y.
4. 🧪 **Test the model** on unseen data.
5. 📊 **Evaluate performance** using appropriate metrics.

---

## 🧩 Common Regression Algorithms

| Algorithm                  | Suitable For                                  |
|----------------------------|-----------------------------------------------|
| **Linear Regression**          | Simple, linear relationships.                  |
| **Polynomial Regression**      | Curved or non-linear relationships.            |
| **Decision Trees**             | Complex relationships without assuming linearity. |
| **Random Forest Regression**   | Large, complex datasets.                       |
| **Support Vector Regression (SVR)** | High-dimensional data.                          |
| **Neural Networks**            | Very complex, non-linear patterns.             |

---

## 📊 Example: Predicting House Prices

| Feature (X)                           | Label (Y)                |
|--------------------------------------|--------------------------|
| Size (square feet), Location, Bedrooms | House Price (in PKR)     |

**Task**:  
The model learns patterns from these features and predicts the price for new houses.

---

## 📝 Evaluation Metrics (Key Performance Indicators)

| Metric                  | Meaning                                                      |
|-------------------------|--------------------------------------------------------------|
| **Mean Squared Error (MSE)**     | Measures average squared difference between predicted and actual values. |
| **Root Mean Squared Error (RMSE)** | Square root of MSE, gives error in original units.          |
| **Mean Absolute Error (MAE)**    | Average of absolute differences between predicted and actual values. |
| **R² Score (Coefficient of Determination)** | Indicates how well the model explains the variance in data (ranges from 0 to 1). |

---

## 🎯 Real-World Examples

- 🏠 **House Price Prediction** → Predicting property value.
- 📈 **Stock Price Forecasting** → Predicting future stock prices.
- 🌦 **Weather Prediction** → Estimating future temperature or rainfall.
- 🛒 **Sales Forecasting** → Predicting future sales volume.

---

## 🔍 Quick Summary

| Task Type | Output Type          | Example                                       |
|-----------|----------------------|-----------------------------------------------|
| **Regression** | Continuous Number    | Predicting house price, temperature, sales         |

