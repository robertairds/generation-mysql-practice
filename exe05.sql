CREATE DATABASE db_pizzaria_legal;	
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL, 
    tamanho VARCHAR(50) NOT NULL, 
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255),
    borda_recheada VARCHAR(3), 
    preco DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, tamanho) VALUES ("Salgada", "Grande");
INSERT INTO tb_categorias(tipo, tamanho) VALUES ("Salgada", "Média");
INSERT INTO tb_categorias(tipo, tamanho) VALUES ("Doce", "Grande");
INSERT INTO tb_categorias(tipo, tamanho) VALUES ("Doce", "Brotinho");
INSERT INTO tb_categorias(tipo, tamanho) VALUES ("Vegana", "Grande");

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Mussarela", "Queijo mussarela e tomate", "Sim", 45.00, 1);

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Calabresa", "Calabresa fatiada e cebola", "Não", 42.00, 2);

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Brigadeiro", "Chocolate e granulado", "Sim", 55.00, 3);

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Romeu e Julieta", "Goiabada e queijo", "Não", 35.00, 4);

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Abobrinha", "Abobrina, queijo vegano e alho", "Não", 60.00, 5);

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Frango com Catupiry", "Frango desfiado e catupiry", "Sim", 52.00, 1);

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Prestígio", "Chocolate e coco ralado", "Não", 58.00, 3);

INSERT INTO tb_pizzas(sabor, ingredientes, borda_recheada, preco, categoria_id) 
VALUES ("Portuguesa", "Presunto, ovo, cebola e ervilha", "Sim", 49.90, 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id 
WHERE tb_categorias.tipo = "Doce";