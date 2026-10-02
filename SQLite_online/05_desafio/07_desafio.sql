/*7) Delete da tabela funcionarios todos os registros de funcionários que 
ganham menos de 4000.*/

-- SELECT de segurança


SELECT * FROM funcionarios WHERE salario < 4000.00;
-- Exclui só o Daniel Campos, id = 2

DELETE FROM funcionarios WHERE salario < 4000.00;
SELECT * FROM funcionarios;


-- Aqui não precisa usar o DELETE * FROM ( inclusive dá até erro).