CREATE DATABASE db_atividade2;

USE db_atividade2;

CREATE TABLE tb_produtos (
	id_produtos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50),
    marca VARCHAR (20),
    categoria VARCHAR (40),
    preco FLOAT,
    fornecedor VARCHAR (30)    
);

ALTER TABLE tb_produtos
MODIFY COLUMN nome VARCHAR (250);

INSERT INTO tb_produtos (nome, marca, categoria, preco, fornecedor)
VALUES
("Xiaomi Mi 11 Ultra 256 GB Ceramic Black 12GB RAM", "Xiaomi", "celulares", 11250, "mercado livre"),
("Lava e Seca 16 Programas Eco Inverter Philco 10 kg Branca PLS11B", "Philco", "eletrodomestico", 2549.15, "casas bahia"),
("Geladeira Brastemp BRE57AK Frost Free com Turbo Ice Inverse - 443L", "Brastemp", "eletrodomestico", 4319.10, "casas bahia"),
("Fritadeira Digital Control 3,3L Oster com Painel Touch", "Oster", "eletroportatil", 467.75, "americanas"),
("Sofá 5 Lugares Retrátil e Reclinável Dallas Veludo Jolie Azul Marinho", "Jolie", "movel", 3585.11, "mobly"),
("Apple MacBook Pro 13", "Apple", "informatica", 9674.99, "amazon"),
("Console Playstation 5", "Playstation", "game", 5625, "Cellponto"),
("Conjunto Sala de Jantar Mesa Tampo MDF 4 cadeiras", "Yescasa", "movel", 899.71, "madeiramadeira");

SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco < 500;

UPDATE tb_produtos
SET nome = "Sofá 5 Lugares Retrátil e Reclinável Dallas Veludo Jolie"
WHERE id_produtos = 13;