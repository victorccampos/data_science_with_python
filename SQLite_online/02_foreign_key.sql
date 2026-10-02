CREATE TABLE tabelaprodutos (
    ID_Produto INT PRIMARY KEY,
    Nome_do_Produto VARCHAR (250),
    Descricao TEXT,
    Categoria INT,
    -- 10 casas antes e 2 casas depois da virgula.
    Preco_de_Compra DECIMAL (10, 2),
    Unidade VARCHAR (50),
    Fornecedor INT,
    Data_de_Inclusao DATE,

    -- Especificando as estrangeiras
    FOREIGN KEY (Categoria) REFERENCES tabelascategorias (id_categoria)
    FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores (id)


);