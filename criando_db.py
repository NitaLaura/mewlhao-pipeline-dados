import sqlite3
import pandas as pd

# Lendo o CSV tratado adaptando o separador
df = pd.read_csv('despesas_tratadas.csv', sep=';')


# Garantindo que a coluna 'DATA' esteja com formato datetime
df['DATA'] = pd.to_datetime(df['DATA'], errors='coerce')

# Converter valores numéricos para float
df['VALOR'] = df['VALOR'].astype(float)


# Criando o banco de dados
conn = sqlite3.connect('despesas.db')

# Criando a tabela 'despesas' e inserindo seus dados
df.to_sql('despesas', conn, if_exists='replace', index=False)


# Fechando a conexão
conn.commit()
conn.close()

print("Dados importados com sucesso!")
