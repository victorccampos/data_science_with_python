
SELECT mes, MIN(faturamento_bruto) FROM faturamento;
SELECT mes, MAX(faturamento_bruto) FROM faturamento;


SELECT SUM(numero_novos_clientes) AS 'Novos clientes 2023' FROM Faturamento
WHERE mes LIKE '%2023'

SELECT AVG(despesas) FROM faturamento;

SELECT COUNT(*) AS Desempregas
FROM HistoricoEmprego
WHERE datatermino NOT NULL;



SELECT COUNT(*) FROM Licencas
WHERE TipoLicenca = 'férias';


-- Cláusula GROUP BY (agrupa linhas)
SELECT Parentesco, COUNT(*) AS Quantidades
FROM Dependentes
GROUP BY Parentesco;


-- Cursos por instituição
SELECT Instituicao, COUNT(Curso) AS ContagemCursos
FROM Treinamento
GROUP BY Instituicao
HAVING ContagemCursos > 2;

-- Profissões mais cadastradas
SELECT Cargo, COUNT(*) Quantidades
FROM HistoricoEmprego
GROUP BY Cargo
HAVING Quantidades >=2;
