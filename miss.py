import pandas as pd

df = pd.read_csv('car_price.csv')
old = pd.DataFrame(df)
print(old)

print("\n")
df_csv_cleaned = df.dropna()
print("Droped csv", df_csv_cleaned)


# using means

data = {'A': [1, 2, None, 4, 5],
'B': [10, None, 30, 40, 50]}
df = pd.DataFrame(data)
mean_A = df['A'].mean()
mean_B = df['B'].mean()
df_imputed = df.fillna({'A': mean_A, 'B': mean_B})


# categorical method

data = {'Category': ['A', 'B', None, 'A', 'C']}
df =pd.DataFrame(data)
df_filled = df.fillna({'Category': 'Unknown'})


# interpolation
data = {'Time': [1, 2, None, 4, 5],
'Value': [10, 20, None, 40, 50]}
df = pd.DataFrame(data)
df_interpolated = df.interpolate()
