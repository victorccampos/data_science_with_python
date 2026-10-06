"""
Criação do banco local (*.db) para seguir o curso utilizando o VS Code.
"""

import sqlite3

import pandas as pd

tabelas = [
    "alunos.xlsx",
    "disciplinas.xlsx",
    "notas.xlsx",
    "professores.xlsx",
    "turma_alunos.xlsx",
    "turma_disciplinas.xlsx",
    "turmas.xlsx",
]

#df = pd.read_excel(tabelas[0])
# #print(df)

conn = sqlite3.connect("banco_escola.db")

for tabela in tabelas:
    df: pd.DataFrame = pd.read_excel(tabela, parse_dates=True)
    df.to_sql(tabela.removesuffix(".xlsx"), conn, if_exists='replace', index=False)

