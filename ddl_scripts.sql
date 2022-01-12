-- DDL (Linguagem de definição de dados)
	-- CREATE (comando de criação)
    -- ALTER (para fazer alguma alteração na tabela)

-- ------------------------------
-- CREATE
-- ------------------------------
CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_usuarios (
	id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45),
    PRIMARY KEY (id_usuario)
);

CREATE TABLE tb_produtos (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(45),
    preco FLOAT,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES tb_usuarios (id_usuario)
);

CREATE TABLE tb_ordens (
	id_ordem INT AUTO_INCREMENT,
    data_ordem DATE,
    status_ordem VARCHAR(20),
    email_comprador VARCHAR(45),
    fk_produto INT,
    PRIMARY KEY (id_ordem),
    FOREIGN KEY (fk_produto) REFERENCES tb_produtos (id_produto)
);

-- ------------------------------
-- ALTER
-- ------------------------------
ALTER TABLE tb_ordens
CHANGE COLUMN data_ordem data_ordem DATE NOT NULL;

ALTER TABLE tb_produtos
ADD foto_produto VARCHAR(255) NULL;

ALTER TABLE tb_ordens
MODIFY COLUMN email_comprador CHAR (30);

ALTER TABLE tb_produtos
DROP COLUMN foto_produto;

-- ------------------------------
-- DROP (deletar estrutura)
-- ------------------------------
DROP TABLE tb_ordens;
DROP TABLE tb_produtos;
DROP TABLE tb_usuarios;

DROP DATABASE db_loja;
