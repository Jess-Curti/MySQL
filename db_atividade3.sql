CREATE DATABASE db_atividade3

USE db_atividade3;

CREATE TABLE tb_estudantes (
	id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (30),
    materia VARCHAR (20),
    nota INT,
    serie INT,
    professor VARCHAR (10)
);

INSERT INTO tb_estudantes (nome, materia, nota, serie, professor)
VALUES
("Pedro", "matematica", 8, 7, "Katy"),
("Gabriela", "historia", 6, 8, "Carolina"),
("Julia", "matematica", 3, 7, "Katy"),
("Rodrigo", "geografia", 9, 7, "Rafael"),
("Celina", "geografia", 3, 7, "Rafael"),
("Bruno", "biologia", 7, 8, "Sandra"),
("Daniel", "historia", 4, 8, "Carolina"),
("Mariana", "ingles", 10, 8, "Isabela");

SELECT * FROM tb_estudantes
WHERE nota > 7;

SELECT * FROM tb_estudantes
WHERE nota < 7;

UPDATE tb_estudantes
SET materia = "biologia"
WHERE id_estudante = 8;