/*
alunos (pk: ID_Aluno)
notas (pk: ID_Nota, fk: ID_Disciplina, ID_Aluno)
turma_alunos (fk: , ID_Disciplina)
turmas (fk: ID_Professor_Orientador)  
disciplinas (pk: ID_disciplina) (fk: ID_Professor)
professores (pk: ID_Professor)
turma_disciplinas (fk: ID_Turma, ID_Disciplina)
*/

-- SQLite não suporta a adição de FOREIGN KEY e PRIMARY KEY diretamente em uma tabela já existente.
-- mas nem é preciso para realizar as queries

-- Consulta 1: Executar consultas para verificar se os dados foram importados
-- corretamente em todas as tabelas.

SELECT * FROM Alunos;
SELECT * FROM Disciplinas;
SELECT * FROM Notas;
SELECT * FROM Professores;
SELECT * FROM Turmas;
SELECT * FROM Turma_Alunos;
SELECT * FROM Turma_Disciplinas;

-- Consula 2: Retorne as informações de todos os alunos ordenados pelo nome.
SELECT * 
FROM alunos
ORDER BY Nome_Aluno;

-- Consulta 3: Retornar a disciplina que possui a carga horaria maior que 40.
SELECT * FROM disciplinas WHERE Carga_Horaria > 40;

-- Consulta 4: Buscar as notas que são maiores que 6 e menores que 8

SELECT * FROM notas
WHERE Nota > 6 AND Nota < 8;

