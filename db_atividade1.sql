CREATE DATABASE db_atividade1;

USE db_atividade1;

CREATE TABLE tb_funcionaries (
	id_funcionaries INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50),
    idade INT,
    formacao VARCHAR (30),
    cidade VARCHAR (15),
    pretencaoSalarial FLOAT
);

ALTER TABLE tb_funcionaries
MODIFY COLUMN formacao VARCHAR (50);

ALTER TABLE tb_funcionaries
RENAME COLUMN pretencaoSalarial TO pretensaoSalarial;

ALTER TABLE tb_funcionaries
MODIFY COLUMN cidade VARCHAR (30);

INSERT INTO tb_funcionaries (nome, idade, formacao, cidade, pretensaoSalarial)
VALUES
("Ana Beatriz Silva", 29, "Analise e Desenvolvimento de Sistemas", "Sao Paulo", 3500.00),
("Simone Alencar", 34, "Ciencia da computacao", "Diadema", 3975.00),
("Paula Amorim", 32, "Ciencia da computacao", "Sao Paulo", 3810.00),
("Vanessa Moraes", 37, "Banco de dados", "São Bernardo do Campo", 3750.00),
("Camila Cavalcante", 36, "Analise e Desenvolvimento de Sistemas", "Diadema", 3638.00);

SELECT * FROM tb_funcionaries
WHERE pretensaoSalarial > 2000;

SELECT * FROM tb_funcionaries
WHERE pretensaoSalarial < 2000;

UPDATE tb_funcionaries
SET idade = 30
WHERE id_funcionaries = 11;
