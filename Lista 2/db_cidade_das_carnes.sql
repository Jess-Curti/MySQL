CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (45)
);

CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45),
    pesoGramas FLOAT,
    preco FLOAT,
    fk_produto INT,
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)    
);

INSERT INTO tb_categoria (categoria)
VALUES
	("Bovinos"),
	("Aves"),
	("Peixaria"),
	("Suinos"),
	("Churrasco");

INSERT INTO tb_produto (nome, pesoGramas, preco, fk_produto)
VALUES
	("Carne moida patinho", 500, 21.96, 1),
	("Camarao 7 barbas descascado", 400, 27.96, 3),
	("Sobrecoxa de frango", 1000, 13.96, 2),
	("Linguica de lombo fina", 500, 18.96, 4),
	("Acem", 900, 29.96, 1),
	("File de frango aperitivo com bacon", 350, 16.96, 2),
	("Costelinha suina premium", 1000, 34.96, 4),
	("Queijo coalho", 385, 22.96, 5);

UPDATE tb_produto
SET pesoGramas = 1000, preco = 69.90
WHERE id_produto = 2;

SELECT * FROM tb_produto
WHERE preco > 50;

SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT
tb_categoria.categoria AS Categoria,
tb_produto.nome AS Produto,
tb_produto.pesoGramas AS `Peso em gramas`,
tb_produto.preco AS `Preço (R$)`
FROM 
tb_categoria -- tabela esquerda
INNER JOIN
tb_produto -- tabela direita
ON tb_categoria.id_categoria = tb_produto.fk_produto
WHERE categoria = "Bovinos";
