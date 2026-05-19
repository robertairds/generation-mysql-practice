CREATE DATABASE db_farmacia_bem_estar;	
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    setor VARCHAR(100) NOT NULL, 
    selo_cruelty_free VARCHAR(3), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    fabricante_marca VARCHAR(100), 
    quantidade_estoque INT,
    preco DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT, 
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(setor, selo_cruelty_free) VALUES ("Cosméticos Veganos", "Sim");
INSERT INTO tb_categorias(setor, selo_cruelty_free) VALUES ("Higiene Cruelty-Free", "Sim");
INSERT INTO tb_categorias(setor, selo_cruelty_free) VALUES ("Suplementos Naturais", "Sim");
INSERT INTO tb_categorias(setor, selo_cruelty_free) VALUES ("Medicamentos Gerais", "Não");
INSERT INTO tb_categorias(setor, selo_cruelty_free) VALUES ("Bem-Estar e Aromaterapia", "Sim");

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Sérum Vitamina C", "Simple Organic", 40, 145.00, 1); 

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Hidratante Facial", "Sallve", 55, 79.90, 1); 

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Shampoo Sólido", "Lola Cosmetics", 90, 34.90, 2); 

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Proteína Isolada de Ervilha", "Growth Supplements", 25, 90.00, 3); 

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Óleo Essencial de Lavanda", "Phytoterápica", 15, 48.00, 5); 

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Dipirona Monoidratada", "Medley", 300, 9.50, 4); 

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Protetor Solar", "O Boticário", 35, 84.90, 1); 

INSERT INTO tb_produtos(nome_produto, fabricante_marca, quantidade_estoque, preco, categoria_id) 
VALUES ("Desodorante em Creme", "Granado", 110, 22.00, 2); 

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.setor = "Cosméticos Veganos";