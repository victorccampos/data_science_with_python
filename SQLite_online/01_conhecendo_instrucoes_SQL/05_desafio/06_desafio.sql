/*6) Atualize o salário dos funcionários do departamento de "TI" para 7500 na 
tabela funcionarios.*/


SELECT salario AS salarios_anteriores FROM funcionarios;

-- Modificando a tabela in-place 
UPDATE funcionarios
SET salario = 7500.00
WHERE departamento = 'TI';

SELECT * FROM funcionarios;