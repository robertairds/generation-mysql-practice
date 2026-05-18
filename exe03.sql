CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,	
    nome VARCHAR(255) NOT NULL,
    turma VARCHAR(50),
    nota DECIMAL(4,2) NOT NULL,
    responsavel VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Harry Potter", "9º Ano A", 8.5, "Lilian Potter");

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Draco Malfoy", "9º Ano B", 6.0, "Lúcio Malfoy");

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Ronald Wesley", "9º Ano A", 9.2, "Molly Wesley");

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Isabella Swan", "9º Ano C", 5.5, "Charlie Swan");

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Edward Cullen", "9º Ano B", 7.0, "Carlisle Cullen");

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Luke Skywalker", "9º Ano A", 4.8, "Anakin Skywalker");

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Naruto Uzumaki", "9º Ano C", 10.0, "Kushina Uzumaki");

INSERT INTO tb_estudantes(nome, turma, nota, responsavel) 
VALUES ("Edward Elric", "9º Ano B", 7.8, "Trisha Elric");

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.5 WHERE id = 2;