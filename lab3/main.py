import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from pandas.core.interchange.dataframe_protocol import DataFrame

data = pd.read_csv("Student_Performance.csv")

print("Описание данных:\n", data.describe())
print("\nТипы данных и наличие пропусков:\n", data.info())

fig, axes = plt.subplots(2, 3, figsize=(15, 10))
fig.suptitle("Распределение признаков")

# Рисовашки
for i in range(2):
    for j in range(3):
        axes[i, j].hist(data[data.keys()[i + j]], bins=10)
        axes[i, j].set_title(data.keys()[i + j])
        axes[i, j].set_xlabel(data.keys()[i + j])
        axes[i, j].set_ylabel("Frequency")

plt.tight_layout(rect=[0, 0.03, 1, 0.95])
plt.show()

# Преобразование к инт
data['Extracurricular Activities'] = data['Extracurricular Activities'].map({'Yes': 1, 'No': 0})


# разделение данных
def train_test_split(x: DataFrame, y: DataFrame, percentage_of_test) -> tuple[
    pd.DataFrame, pd.DataFrame, pd.DataFrame, pd.DataFrame]:
    index = int((1 - percentage_of_test) * len(x))
    return x[:index], x[index:], y[:index], y[index:]


x = data.drop('Performance Index', axis=1)
y = data['Performance Index']
x_train, x_test, y_train, y_test = train_test_split(x, y, 0.2)


def linear_regression(x, y):
    # ради свободного члена
    x = np.c_[np.ones(x.shape[0]), x]
    # (X^T X)^(-1) X^T y
    x_transpose = x.T
    w = np.linalg.inv(x_transpose @ x) @ x_transpose @ y
    b = w[0]
    w = w[1:]
    return w, b


def predict(x, weights, b):
    return x @ weights + b


def mean_squared_error(y_true, y_pred):
    return np.mean((y_true - y_pred) ** 2)


def determinant(y_pred, y_test):
    res = sum([(y_test[i] - y_pred[i]) ** 2 for i in range(len(y_test))])
    y = 1 / len(y_test) * sum(y_test)
    tot = sum([(y_test[i] - y) ** 2 for i in range(len(y_test))])
    return 1 - (res / tot)


# модель 1 по всем
x1_train = x_train.copy()
x1_test = x_test.copy()
w1, b1 = linear_regression(x1_train.values, y_train.values)
y_pred1 = predict(x1_test.values, w1, b1)
print("Коэффицент детерминации для 1 модели", determinant(y_pred1, y_test.values))

# модель 2 - среднее часов сна, Образцы экзаменационных работ, которые выполнил студент
x2_train = x_train[['Sleep Hours', 'Sample Question Papers Practiced']].copy()
x2_test = x_test[['Sleep Hours', 'Sample Question Papers Practiced']].copy()
w2, b2 = linear_regression(x2_train.values, y_train.values)
y_pred2 = predict(x2_test.values, w2, b2)
print("Коэффицент детерминации для 2 модели", determinant(y_pred2, y_test.values))

# модель 3 - вместе с синтетикой
x3_train = x_train.copy()
x3_test = x_test.copy()
x3_train["synthetics"] = x3_train['Hours Studied'] / x3_train['Sleep Hours']
x3_test["synthetics"] = x3_test['Hours Studied'] / x3_test['Sleep Hours']
w3, b3 = linear_regression(x3_train.values, y_train.values)
y_pred3 = predict(x3_test.values, w3, b3)
print("Коэффицент детерминации для 3 модели", determinant(y_pred3, y_test.values))


# вывод коэффициентов модели 1
result1 = np.insert(w1, 0, b1)
col_names1 = ['a', 'Hours Studied', 'Previous Scores', 'Extracurricular Activities', 'Sleep Hours', 'Sample Question Papers Practiced']
df1 = pd.DataFrame([result1], columns=col_names1)
print(df1)


# вывод коэффициентов модели 2
result2 = np.insert(w2, 0, b2)
col_names2 = ['a', 'Sleep Hours', 'Sample Question Papers Practiced']
df2 = pd.DataFrame([result2], columns=col_names2)
print(df2)


# вывод коэффициентов модели 3
result3 = np.insert(w3, 0, b3)
col_names3 = ['a', 'Hours Studied', 'Previous Scores', 'Extracurricular Activities', 'Sleep Hours', 'Sample Question Papers Practiced', 'synthetics']
df3 = pd.DataFrame([result3], columns=col_names3)
print(df3)