import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
df = pd.DataFrame({
    "spam_calls": [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
    "result": ["spam", "spam", "spam", "spam", "spam",
               "not spam", "not spam", "not spam", "not spam", "spam"]
})

X = df[["spam_calls"]]
y = df["result"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2)

model = DecisionTreeClassifier()
model.fit(X_train.values, y_train)
model.predict([[5]])

print(predictions)
