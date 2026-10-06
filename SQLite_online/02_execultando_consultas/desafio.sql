.tables

-- Consulta 1: Retornar a média de Notas dos Alunos em história.
SELECT AVG(Nota) AS Nota_Media
FROM Notas
WHERE ID_Disciplina = 2;

-- 3.603


-- Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.
SELECT ID_Aluno, Nome_Aluno
FROM Alunos
WHERE Nome_Aluno LIKE 'A%';

-- ID_Aluno 4, Nome_Aluno 'Ana Lima'

-- Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.
SELECT 
    ID_Aluno,
    Nome_Aluno,
    Data_Nascimento,
    strftime('%m',Data_Nascimento) AS Mes_Aniversario
FROM Alunos
WHERE Mes_Aniversario = '03';
-- 1	João Silva	2005-03-15	03
-- 13	Camila Rodrigues	2006-03-22	

-- Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.
SELECT 
    Nome_Aluno,
    Data_Nascimento, 
    (strftime('%Y', 'now') - strftime('%Y', data_nascimento)) - 
    (strftime('%m-%d', 'now') < strftime('%m-%d', data_nascimento)) 
    AS Idade 
FROM Alunos;


/*
(strftime('%m-%d', 'now') < strftime('%m-%d', data_nascimento))

Subtrai 1 caso TRUE e 0 para FALSE.
*/
-- Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado
-- aprovado se a sua nota foi igual ou maior que 6.

SELECT ID_Aluno, Nota,
CASE
    WHEN Nota >= 6.0 THEN 'Aprovado'
    ELSE 'Reprovado'
END AS Status_Aprovacao
FROM Notas;