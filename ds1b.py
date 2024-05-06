import pandas as pd

data1={
    "Emp_id":["E01","E02","E03","E04","E05","E06"],
    "Name":["Ram","Shyam","John","Rahul","Pan","John"],
    "Age":[35,37,46,23,26,36]}

data2={
    "Emp_id":["E01","E02","E03","E04","E06","E09"],
    "Salary":[45000,57000,46000,23000,23000,22000]
    }

df1=pd.DataFrame(data1)
print(df1)
print('\n')
df2=pd.DataFrame(data2)
print(df2)
print('\n')
print(pd.merge(df1,df2,on='Emp_id'))
print('\n')
print(pd.merge(df1,df2,on='Emp_id',how='left'))
print('\n')
print(pd.merge(df1,df2,on='Emp_id',how='right'))
print('\n')
print(pd.concat([df1,df2]))
print('\n')


dict1={"Fruits":["mango","apple","Banana","Orange"],
    "Price":[100,203,34,56],
    "Quantity":[16,12,13,14]
}
df3=pd.DataFrame(dict1)
print(df3)

print('\n')
df4=df3.copy()
print(df4)

print('\n')
df4.loc[0,"Price"]=120
df4.loc[1,"Price"]=240
df4.loc[2,"Price"]=340
print(df4)

print('\n')

print(df3.compare(df4))

print('\n')
print(pd.melt(df3,id_vars=["Fruits"],value_vars=["Price"]))

print('\n')

print(pd.melt(df3,id_vars=["Fruits"],value_vars=["Price","Quantity"],var_name="Price&Quantity",value_name="values"))
