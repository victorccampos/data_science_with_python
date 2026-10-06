
-- Coluna calculada com a cláusula CASE

SELECT ID_Colaborador, Cargo, Salario,
    CASE
        WHEN Salario < 3000 THEN 'Baixo'
        WHEN Salario >= 3000 AND Salario < 6000 THEN 'Médio'
        ELSE 'Alto'
    END AS Categoria_Salario
FROM HistoricoEmprego;


--  Renomear alguns elementos no banco de dados
.tables;
ALTER TABLE HistoricoEmprego RENAME TO CargosColaboradores;

.tables3