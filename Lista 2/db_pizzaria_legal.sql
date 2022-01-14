CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id INT AUTO_INCREMENT PRIMARY KEY,
    tamanho_pizza VARCHAR (25),
    categoria_pizza VARCHAR (30)
);

CREATE TABLE tb_pizza (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sabor_pizza VARCHAR(25),
    formato_pizza VARCHAR (40),
    preco FLOAT,
    fk_categoria INT,
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (tamanho_pizza, categoria_pizza)
VALUES
("Broto", "Salgada"),
("Media", "Salgada"),
("Grande", "Salgada"),
("Broto", "Doce"),
("Media", "Doce"),
("Grande", "Doce");

INSERT INTO tb_pizza (sabor_pizza, formato_pizza, preco, fk_categoria)
VALUES
("Portuguesa", "Redonda", 42.00, 2),
("Frango com catupiry", "Redonda", 27.90, 1),
("Morango com chocolate", "Redonda", 32.00, 4),
("Dois Queijos", "Quadrada", 54.00, 3),
("Brócolis", "Quadrada", 45.00, 2),
("Prestígio", "Redonda", 19.75, 5),
("Baiana", "Quadrada", 39.90, 1),
("Mussarela", "Redonda", 41.25, 2);

SELECT * FROM tb_pizza
WHERE preco > 45;

SELECT * FROM tb_pizza
WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza
WHERE sabor_pizza LIKE "%C%";

-- Selecionar tudo da tabela pizza, jutar a tabela categoria com o id da tabela categoria = fk da tabela pizza 
SELECT * FROM tb_pizza
	INNER JOIN tb_categorias ON tb_categorias.id = tb_pizza.fk_categoria;
    
SELECT tb_pizza.sabor_pizza, tb_pizza.formato_pizza, tamanho_pizza, categoria_pizza, preco
FROM tb_pizza
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizza.fk_categoria
WHERE tb_categorias.categoria_pizza = "Salgada";

    