CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (45)
);

CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    quantidade INT,
    nome VARCHAR (100),
    marca VARCHAR (30),
    fk_produto INT,
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (categoria)
VALUES
	("Jardinagem"),
    ("Ferramenta"),
    ("Decoracao"),
    ("Pisos e Revestimentos"),
    ("Material de construcao");

INSERT INTO tb_produto (quantidade, nome, marca, fk_produto)
VALUES
	(2, "Lanterna em Metal Decor 16x26cm cobre", "Casanova", 3),
    (150, "Porcelanato Polido Borda reta York 87,7x87,7cm", "Cerâmica Portinari", 4),
    (1, "Parafusadeira a Bateria 3.6v Bivolt com Acessorios Cinza", "Tramontina", 2),
    (1, "Pulverizador de compressao previa 1,5", "Tramontina", 1),
    (15, "Cimentos toda obra", "Votorantim", 5),
    (4, "Papel de Parede Vinílico Liso Marrom 53cm com 10 Metros", "Conthey", 3),
    (10, "Pedras dolomitas 4,9Kg Branca", "Verdi Max", 1),
    (1, "Kit de ferramentas 9 peças com maleta", "Metropac", 2);

SELECT * FROM tb_produto
WHERE quantidade > 50;

SELECT * FROM tb_produto
WHERE quantidade BETWEEN 3 AND 60;

SELECT * FROM tb_produto
WHERE nome LIKE "%C%";

SELECT
tb_categoria.categoria AS Categoria,
tb_produto.quantidade AS Quantidade,
tb_produto.nome AS Produto,
tb_produto.marca AS Marca
FROM 
tb_categoria -- tabela esquerda
INNER JOIN
tb_produto -- tabela direita
ON tb_categoria.id_categoria = tb_produto.fk_produto
WHERE categoria = "Decoracao";
    


