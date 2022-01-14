CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (30),
    descricao VARCHAR (150)
);

CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100),
    marca VARCHAR (30),
    quantidade INT,
    preco FLOAT,
    fk_produto INT,
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (categoria, descricao)
VALUES
	("Medicamentos", "Produtos destinados a prevencao, cura ou alivio dos sintomas de alguma doença"),
    ("Beleza", "Produtos destinados para os cuidados estéticos do rosto e corpo"),
    ("Cuidados diarios", "Produtos destinados ao uso diario"),
    ("Higiene", "Produtos destinados a limpeza promovendo saude"),
    ("Promocoes", "Produtos oferecidos com desconto");

INSERT INTO tb_produto (nome, marca, quantidade, preco, fk_produto)
VALUES
	("Dipirona 500mg/ml gotas 20mL", "Neo Quimica", 5, 2.49, 1),
    ("Teste Gravidez confira tira + coletor", "Confira", 10, 1.88, 5),
    ("Hastes Flexíveis 150 unidades", "Cotonetes", 15, 8.33, 4),
    ("Po compacto sunless FPS50 medio 10g", "Sunless", 1, 68.07, 2),
    ("Aparelho de depilacao 2 unidades", "Gillete", 20, 15.54, 3),
    ("Victoza solucao injetavel 6mg/ml 2 sistemas de aplicacao", "Nordisk", 2, 516.06, 1),
    ("Absorvente intimus gel normal cobertura extra suave abas", "Intimus", 5, 13.86, 4),
    ("Mascara de cilios curvatura e volume 5ml", "Luk", 25, 5.99, 2);

SELECT * FROM tb_produto
WHERE preco > 50;

SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto
WHERE nome LIKE "%B%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_produto;

SELECT tb_produto.nome, tb_produto.marca, tb_produto.preco, categoria, descricao
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_produto
WHERE tb_categoria.categoria = "Beleza";