-- 1) Crie uma tabela chamada funcionarios com as seguintes colunas: 
-- id (int, chave primária),
-- nome (varchar(100)),
-- departamento (varchar(100)) e salario (float).

--  Em seguida, insira os seguintes registros de funcionários na tabela:

-- ID: 1, Nome: Heitor Vieira,  Financeiro,  4959.22
-- ID: 2, Nome: Daniel Campos,  Vendas,  3884.44
-- ID: 3, Nome: Luiza Dias,  TI,  8205.78
-- ID: 4, Nome: Davi Lucas Moraes,  Financeiro,  8437.02
-- ID: 5, Nome: Pietro Cavalcanti,  TI,  4946.88
-- ID: 6, Nome: Evelyn da Mata,  Vendas,  5278.88
-- ID: 7, Nome: Isabella Rocha,  Marketing,  4006.03
-- ID: 8, Nome: Sra. Manuela Azevedo,  Vendas,  6101.88
-- ID: 9, Nome: Brenda Cardoso,  TI,  8853.34
-- ID: 10, Nome: Danilo Souza,  TI,  8242.14


/*
SOLUÇÂO 
*/



CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(100),
    salario FLOAT
);

-- Verificando as tabelas do banco
.tables 

-- Verificando as infos da tabela criada
PRAGMA table_info(funcionarios)

INSERT INTO funcionarios (id, nome, departamento, salario) VALUES 
(1, 'Heitor Vieira',  'Financeiro',  4959.22),
(2, 'Daniel Campos',  'Vendas',  3884.44),
(3, 'Luiza Dias',  'TI',  8205.78),
(4, 'Davi Lucas Moraes',  'Financeiro',  8437.02),
(5, 'Pietro Cavalcanti',  'TI',  4946.88),
(6, 'Evelyn da Mata',  'Vendas',  5278.88),
(7, 'Isabella Rocha',  'Marketing',  4006.03),
(8, 'Sra. Manuela Azevedo',  'Vendas',  6101.88),
(9, 'Brenda Cardoso',  'TI',  8853.34),
(10, 'Danilo Souza',  'TI',  8242.14);


SELECT * FROM funcionarios;

