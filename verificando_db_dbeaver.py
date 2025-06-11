import sqlite3
import pandas as pd

# Conectar ao banco
conexao = sqlite3.connect('C:/Users/Laurinha/Desktop/Projeto_Financas_Pessoais/despesas.db')

# Ler a tabela 'despesas' usando pandas
df = pd.read_sql_query("SELECT * FROM despesas", conexao)

# Mostrar os 5 primeiros registros
print(df.head())

# Fechar conexão
conexao.close()
