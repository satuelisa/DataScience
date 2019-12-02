import pandas as pd
for file in ['ini', 'mc', 'ord']:
    d = pd.read_csv(file + '.csv')
    print(file, d.size)
