CREATE DATABASE db_rh; 

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,	
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    data_admissao DATE,
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Anne Rice", "Desenvolvedora Junior", "2025-01-15", 2500.00);

INSERT INTO tb_colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Bram Stoker", "Estagiário de TI", "2025-03-01", 1400.00);

INSERT INTO tb_colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Victor Hugo", "Gerente de Projetos", "2023-06-10", 6500.00);

INSERT INTO tb_colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Oscar Wilde", "Suporte Técnico", "2024-09-20", 1900.00);

INSERT INTO tb_colaboradores(nome, cargo, data_admissao, salario) 
VALUES ("Mary Shelley", "Analista de Dados", "2024-11-05", 4200.00);
   
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1800.00 WHERE id = 2;