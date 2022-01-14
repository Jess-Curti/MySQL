CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (30),
    nivel ENUM ('Basico', 'Intermediario', 'Avancado')
);

CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100),
    cargaHoraria INT,
    preco DECIMAL,
    fk_produto INT,
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (categoria, nivel)
VALUES
	("Programacao", "Intermediario"),
    ("Front-end", "Basico"),
    ("Devops", "Avancado"),
    ("Data Science", "Avancado"),
    ("Mobile", "Intermediario");
    
INSERT INTO tb_produto (nome, cargaHoraria, preco, fk_produto)
VALUES
	("Certificação Java", 80, 4350, 1),
    ("Comunicação HTTP: Flutter com web API", 10, 573, 5),
    ("Flexbox: Posicione elementos na tela", 9, 741, 2),
    ("Grafana e Telegraf: Monitoramento em tempo real", 10, 2331, 3),
    ("Python", 100, 3786, 1),
    ("PostgreSQL: Primeiros passos com SQL", 8, 412, 4),
    ("Bootstrap: criação de uma single-page responsiva", 12, 1267, 2),
    ("Amazon ECS: Gerencie Docker na nuvem da AWS", 8, 1645, 3);

SELECT * FROM tb_produto
WHERE preco > 50;

SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto
WHERE nome LIKE "%J%";

SELECT
tb_categoria.categoria AS Categoria,
tb_produto.nome AS Curso,
tb_produto.cargaHoraria AS `Carga Horaria`,
tb_produto.preco AS Preço
FROM 
tb_categoria -- tabela esquerda
INNER JOIN
tb_produto -- tabela direita
ON tb_categoria.id_categoria = tb_produto.fk_produto
WHERE categoria = "Programacao";




