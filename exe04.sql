CREATE DATABASE db_generation_game_online;	
USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(100) NOT NULL,
    recurso_principal VARCHAR(50), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT, 
    poder_ataque INT NOT NULL, 
    poder_defesa INT NOT NULL, 
    classe_id BIGINT, 
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- 5 registros na tabela tb_classes
INSERT INTO tb_classes(nome_classe, recurso_principal) VALUES ("Bárbaro", "Fúria");
INSERT INTO tb_classes(nome_classe, recurso_principal) VALUES ("Arcanista", "Poder Arcano");
INSERT INTO tb_classes(nome_classe, recurso_principal) VALUES ("Necromante", "Essência");
INSERT INTO tb_classes(nome_classe, recurso_principal) VALUES ("Monge", "Espírito");
INSERT INTO tb_classes(nome_classe, recurso_principal) VALUES ("Caçador de Demônios", "Ódio / Disciplina");

-- 8 registros na tabela tb_personagens
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Kratos", 70, 3500, 4000, 1); 

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Arme", 70, 5200, 1100, 2); 

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Azula", 70, 4800, 1500, 3); 

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Aang", 60, 2200, 2800, 4); 

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Valla", 70, 6000, 950, 5); 

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Carmilla", 45, 1800, 1900, 1); 

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Genevieve", 70, 3100, 2100, 3); 

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) 
VALUES ("Jondar", 15, 500, 400, 2); 

-- SELECT: poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT: poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT: utilizando LIKE
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- SELECT: utilizando INNER JOIN
SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

-- SELECT: utilizando INNER JOIN para selecionar classe específica 
SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id 
WHERE tb_classes.nome_classe = "Necromante";