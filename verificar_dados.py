import sqlite3

# Conectando ao banco de dados SQLite
conn = sqlite3.connect('despesas.db')
cursor = conn.cursor()

# Consultando os dados da tabela
cursor.execute('SELECT * FROM despesas LIMIT 10;')

# Exibindo o resultado
rows = cursor.fetchall()
if rows:
    print("Dados na tabela 'despesas':")
    for row in rows:
        print(row)
else:
    print("A tabela 'despesas' está vazia.")

# Fechando a conexão
conn.close()
