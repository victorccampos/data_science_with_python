/*
Abaixo estão 10 exercícios de SQL que abrangem uma variedade de tópicos, desde
funções de agregação e string até operadores lógicos e cláusulas de filtragem.
Esses exercícios são projetados para serem aplicados em um banco de dados 
genérico e podem precisar de ajustes para se adequarem a esquemas específicos.

*/

-- 01. Selecione os primeiros 5 registros da tabela clientes, ordenando-os pelo 
-- nome em ordem crescente.


SELECT * FROM tabelaclientes
ORDER BY Nome_Cliente
LIMIT 5;

-- 02. Encontre todos os produtos na tabela produtos que não têm uma descrição
-- associada (suponha que a coluna de descrição possa ser nula).

SELECT * FROM tabelaprodutos
WHERE Descricao IS NOT NULL;


-- 03. Liste os funcionários cujo nome começa com 'A' e termina com 's' na tabela 
-- funcionarios. `LIKE 'A%s`

SELECT Nome_do_Produto FROM tabelaprodutos
WHERE Nome_do_Produto LIKE 'P%';


-- 04. Exiba o departamento e a média salarial dos funcionários em cada 
-- departamento na tabela funcionarios, agrupando por departamento, apenas para os 
-- departamentos cuja média salarial é superior a $5000.
-- Query análoga

SELECT * FROM fornecedores
GROUP BY País_de_Origem
HAVING Data_de_Início < '2022-01-01'        
ORDER BY Data_de_Início;


-- 05. Selecione todos os clientes da tabela clientes e concatene o primeiro e o 
-- último nome, além de calcular o comprimento total do nome completo.
SELECT Nome_Cliente, LENGTH(Nome_Cliente) AS Tamanho_Nome
FROM tabelaclientes;

-- 06. Para cada venda na tabela vendas, exiba o ID da venda, a data da venda e a 
-- diferença em dias entre a data da venda e a data atual.

SELECT ID, Data_do_Pedido, JULIANDAY(Data_de_Envio_Estimada) - JULIANDAY('now') AS Diferenca_Dias
FROM pedidos;

-- Outra solução:
SELECT 
    ID, 
    Data_do_Pedido, 
    CAST(JULIANDAY('now') - JULIANDAY(Data_do_Pedido) AS INTEGER) AS Diferenca_Dias
FROM pedidos;

-- 07 - Selecione todos os itens da tabela pedidos e arredonde o preço total para o 
-- número inteiro mais próximo

SELECT ID, Total_do_Pedido, CAST(CEIL(Total_do_Pedido) AS INTEGER) FROM pedidos;


-- 08 Converta a coluna data_string da tabela eventos, que está em formato de 
-- texto (YYYY-MM-DD), para o tipo de data e selecione todos os eventos após '2023-01-01'.

SELECT * FROM pedidos;
PRAGMA table_info(pedidos);

SELECT *, DATE(Data_do_Pedido) AS Data_Pedido_dt
FROM pedidos
WHERE Data_Pedido_dt > '2023-01-01';


-- 09 Na tabela avaliacoes, classifique cada avaliação como 'Boa', 'Média', ou 
-- 'Ruim' com base na pontuação:
-- 1-3 para 'Ruim' | < 100 (barato)
-- 4-7 para 'Média' |  100 <= preco < 500 (normal)
-- e 8-10 para 'Boa'.  >=500 (caro

SELECT Total_do_Pedido,
CASE
    WHEN Total_do_Pedido < 100 THEN 'barato'
    WHEN Total_do_Pedido >= 100 AND Total_do_Pedido < 500 THEN 'normal'
    ELSE 'caro'
END AS Avaliacao_Preco
FROM pedidos;

-- 10 -Altere o nome da coluna data_nasc para data_nascimento na tabela funcionarios e 
-- selecione todos os funcionários que nasceram após '1990-01-01'. 
.tables
ALTER TABLE fornecedores RENAME País_de_Origem TO 'País';
SELECT * FROM fornecedores;
