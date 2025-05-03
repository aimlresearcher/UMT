📘 Supervised Learning – Classification
🔎 What is Supervised Learning?
In Supervised Learning, a model learns from labeled data.
The data contains:

Input features (X) → Information used for prediction.

Output labels (Y) → The correct answer for each input.

The model’s job is to learn a mapping function from inputs to outputs.

Example:
Email text (input) → Label: Spam or Not Spam (output).

🏷 What is Classification?
Classification is a Supervised Learning task where:

The output (Y) is categorical (discrete classes or categories).

The model assigns a class label to each input.

Simple Example:
🏠 Given details of a house, predict if its price category is Low, Medium, or High.

🔥 Key Terminology
Term	Meaning
Features (X)	Variables or attributes used for prediction.
Label (Y)	Known category/class for each input.
Training Data	Data used to teach the model.
Testing Data	New data to evaluate model performance.
Classifier	The algorithm/model performing the classification task.

⚙ How Classification Works – Workflow
Collect labeled data.

Choose a classification algorithm (e.g., Decision Tree, K-Nearest Neighbors).

Train the model on training data.

Test the model on unseen data.

Evaluate performance using metrics like Accuracy, Precision, Recall.

🧩 Common Classification Algorithms
Algorithm	Suitable For
Decision Trees	Easy to interpret problems.
K-Nearest Neighbors (KNN)	Simple pattern recognition tasks.
Naïve Bayes	Text classification, spam filtering.
Support Vector Machine (SVM)	Complex, high-dimensional data.
Logistic Regression	Binary classification problems.
Neural Networks	Large and complex classification tasks (e.g., image recognition).

📊 Example: Email Spam Classifier
Feature (X)	Label (Y)
Email contains words like "discount" or "offer"	Spam
Email contains official job title words	Not Spam

Task: The model learns patterns from these features and classifies new emails as Spam or Not Spam.

📝 Evaluation Metrics (Key Performance Indicators)
Metric	Meaning
Accuracy	% of correct predictions out of all predictions.
Precision	% of correct positive predictions.
Recall	% of actual positives correctly predicted.
F1-Score	Balance between Precision and Recall (harmonic mean).

🎯 Real-World Examples
Spam Detection → Classify emails as spam or not spam.

Medical Diagnosis → Classify patients as sick or healthy.

Banking → Classify loan applications as approved or denied.

Face Recognition → Identify people in photos.

🔍 Quick Summary
Task Type	Output	Example
Classification	Categories / Labels	Spam vs. Not Spam, Healthy vs. Sick