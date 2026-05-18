CREATE DATABASE db_ecommerce; 
USE db_ecommerce;

CREATE TABLE tb_produtos(
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL, 
  categoria VARCHAR(100),
  quantidade INT, 
  preco DECIMAL(10,2) NOT NULL, 
  PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("Os Miseráveis", "Livro Físico", 15, 700.00);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("Drácula", "Livro Digital", 20, 40.00);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("Frankenstein", "Livro Físico", 8, 99.90);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("O Retrato de Dorian Gray", "Livro Digital", 30, 39.00);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("Carmilla", "Livro Físico", 5, 20.00);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("O Médico e o Monstro", "Livro Físico", 12, 70.00);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("Grandes Contos: H.P Lovecraft", "Livro Físico", 15, 600.00);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco) 
VALUES ("Os Pilares da Terra", "Livro Digital", 10, 90.00);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET quantidade = 12 WHERE id = 1;
