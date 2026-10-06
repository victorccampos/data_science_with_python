-- Liste todos os IDs únicos dos produtos vendidos pela empresa, ou seja, uma 
-- lista de produtos distintos. Utilize a cláusula DISTINCT para garantir que
-- os IDs dos produtos sejam únicos.

-- SELECT DISTINCT id_produto 
-- FROM produtos;

-- Identifique os clientes que se cadastraram na empresa antes de 2020.
-- Liste o nome e a data de cadastro desses clientes. 
-- Utilize a cláusula WHERE para filtrar os registros

SELECT nome_do_cliente, data_de_cadastro 
FROM clientes
WHERE data_de_cadastro < '2020-01-01'