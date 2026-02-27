CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    nome VARCHAR(50)  NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    habilidade_especial VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(50)  NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    vida_maxima INT NOT NULL,
    id_classe BIGINT NOT NULL,
    PRIMARY KEY (id_personagem),
    CONSTRAINT fk_classe FOREIGN KEY (id_classe)
        REFERENCES tb_classes (id_classe)
);

INSERT INTO tb_classes (nome, descricao, habilidade_especial)
VALUES	('Guerreiro', 'Especialista em combate corpo a corpo com alta resistência', 'Golpe Devastador'),
		('Arqueiro', 'Mestre do arco, ataca à distância com precisão mortal', 'Chuva de Flechas'),
		('Mago', 'Conjurador de magias poderosas com grande poder mágico', 'Tempestade Arcana'),
		('Paladino', 'Guerreiro sagrado que equilibra ataque e cura', 'Aura Divina'),
		('Assassino', 'Especialista em ataques furtivos e dano crítico elevado', 'Golpe Sombrio');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, vida_maxima, id_classe)
VALUES	('Ragnar',    45, 3200, 1800, 12000, 1),
		('Caelum',    38, 2800,  900,  8500, 2),
		('Zephyra',   50, 4500,  600, 7000,  3),
		('Aldric',    42, 2500, 2200, 11000, 4),
		('Nyx',       40, 3800,  800,  7500, 5),
		('Brunhilda', 35, 2100, 1500,  9500, 1),
		('Cedric',    30, 1800, 1100,  8000, 2),
		('Morgana',   48, 4200,  500,  6500, 3);
        
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT
    p.id_personagem,
    p.nome AS personagem,
    p.nivel,
    p.poder_ataque,
    p.poder_defesa,
    p.vida_maxima,
    c.nome AS classe,
    c.habilidade_especial
FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id_classe;

SELECT
    p.id_personagem,
    p.nome AS personagem,
    p.nivel,
    p.poder_ataque,
    p.poder_defesa,
    p.vida_maxima,
    c.nome AS classe,
    c.habilidade_especial
FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id_classe WHERE c.nome = 'Arqueiro';