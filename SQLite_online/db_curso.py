"""
Criação do banco local (*.db) para seguir o curso utilizando o VS Code.
"""
import sqlite3

import pandas as pd

conn = sqlite3.connect("db/banco_curso.db")

df_fornecedores = pd.read_csv('raw/tabela_fornecedores.csv', parse_dates=True)
df_pedidos = pd.read_csv('raw/tabela_pedidos.csv', parse_dates=True)


print(df_fornecedores.head())
print(df_pedidos.head())

# Adicionando ao banco.
df_fornecedores.to_sql('fornecedores', conn, if_exists='replace', index=False)
df_pedidos.to_sql('pedidos', conn, if_exists='replace', index=False)
