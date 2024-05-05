import pandas as pd
from sklearn.preprocessing import StandardScaler,MinMaxScaler,OneHotEncoder
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline

data = {
    'Product':['Apple_juice','Banana_Smoothie','Orange_Jam','Grape_Jelly','Kiwi_Parfait','Pineapple_juice','chikoo_jam',
               'Mango_custard','Strawberry_yoghurt','Cherry_salsa'],
    'Category':['Apple','Banana','Orange','Grape','Kiwi','Pineapple','Chikoo','Mango','Strawberry','Cherry'],
    'Sales':[1200,1700,2200,1400,2000,1400,1200,1100,1000,1600],
    'Cost':[600,850,1100,700,1000,1200,500,700,900,850],
    'Profit':[600,850,1100,700,1000,1200,500,700,900,850]

}
df=pd.DataFrame(data)
print("Original dataset")
print(df)

numeric_columns=['Sales','Cost','Profit']
scaler_standardization = StandardScaler()
scaler_normalization = MinMaxScaler()
df_scaled_standardized = pd.DataFrame(scaler_standardization.fit_transform(df[numeric_columns]),columns=numeric_columns)
df_scaled_normalized = pd.DataFrame(scaler_normalization.fit_transform(df[numeric_columns]),columns=numeric_columns)
df_scaled = pd.concat([df_scaled_standardized,df.drop(numeric_columns,axis=1)],axis=1)
print("\nDataset after Feature Scaling:")
print(df_scaled)

categorical_columns = ['Product','Category']
preprocessor = ColumnTransformer(
    transformers=[
        ('categorical',OneHotEncoder(),categorical_columns)
    ],
    remainder='passthrough')
df_dummified = pd.DataFrame(preprocessor.fit_transform(df))
print("\nDataset after Feature Dummification:")
print(df_dummified)
