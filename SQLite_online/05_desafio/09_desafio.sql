/*
9) Crie uma tabela chamada projetos com as colunas: 
id_projeto (int, chave primária),
nome_projeto (varchar(100)),
id_gerente (int, referência a id na tabela funcionarios). 

Insira 3 registros na tabela projetos e, em seguida, selecione todos os projetos
cujo id_gerente seja igual a 2.

*/

CREATE TABLE projetos (
    id_projeto INT PRIMARY_KEY,
    nome_projeto VARCHAR (100),
    id_gerente INT,
    -- id_gerente como chave estrangeira
    FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);

-- 2. Inserção de 3 registros
INSERT INTO projetos (id_projeto, nome_projeto, id_gerente) 
VALUES 
    (1, 'Sistema de Gestão', 1),
    (2, 'Aplicativo Mobile', 2),
    (3, 'Migração de Dados', 2);

-- 3. Seleção dos projetos cujo id_gerente seja igual a 2
SELECT * 
FROM projetos 
WHERE id_gerente = 2;