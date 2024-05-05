import pandas as pd

df = pd.read_csv('car_price.csv')
old = pd.DataFrame(df)
print(old)

print('\n')
print('df.coloumns ->',old.columns)

print('\n')
old.drop(['Unnamed: 0'], axis=1, inplace = True)
print(old)

print("\n")
df_csv_cleaned = df.dropna()
print("Droped csv", df_csv_cleaned)

print('\n')
print("Shape (gives number of rows[0] and columns[1])")
print(old.shape)
print(old.shape[0])
print(old.shape[1])

print('\n')
print("Info() and describe()")
print('infor : ')
old.info()
print('\n')
print('describe : ',old.describe())
print('\n')

print("Count(number) of Unique data: ")
print('\n')
for i in old.columns:
    print(i)
    print(old[i].nunique())

print("\n Unique data")
print('\n')
for i in old.columns:
    print(i)
    print(old[i].unique())
    
print('\n')
car =[]
c = []
for i in old.columns:
    if (old[i].dtype == 'object'):
        car.append(i)
    else:
        c.append(i)
print("Columns with Objects: ",car)
print("\nColumns without Objects: ",c)
print('\n')

print("it's prints null columns and duplicates columns: ")
print(old.isnull())
print(old.duplicated())
print(old.drop_duplicates('car_name'))

filtered_data = df[df['manufacture'] > 10]
print(filtered_data)

print('\n Sorting the data : ')
print(old.sort_values(["car_name","kms_driven"], ascending = [True, False]))

print("\n Grouping : ")
groups = old.groupby(["car_name"])
print(groups.groups)

print("\n Size : ")
print(old.size)

# o=old.query("engine == '1199 cc'")
o=old.query("car_name == 'Honda Jazz VX CVT'")
print(o)
