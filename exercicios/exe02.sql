CREATE DATABASE db_loja_boardgames;

USE db_loja_boardgames;

CREATE TABLE tb_jogos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    idade_minima INT,
    marca VARCHAR(255) NOT NULL,
    preco DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE tb_jogos MODIFY preco DECIMAL(6, 2);

-- ("nome", "genero", idade minima, "marca", preco)
INSERT INTO tb_jogos(nome, genero, idade_minima, marca, preco)
VALUES 	("Potion Explosion", "Família", 14, "Galápagos Jogos", 369.79),
		("Trio", "Família", 6, "Paper Games", 58.10),
		("Tiranos de Umbreterna", "Estratégia", 14, "Across The Board", 415.28),
        ("O Senhor dos Anéis: Sina da Sociedade", "Estratégia", 14, "Asmodee", 660.00),
        ("Intarsia", "Abstrato", 10, "Across The Board", 353.28),
        ("Código Secreto", "Party", 10, "Devir", 219.99),
        ("Quartz", "Party", 14, "Mandala Jogos", 219.99),
        ("Thunder Road: Vendetta", "Ação", 10, "Galápagos Jogos", 499.99)
;

SELECT * FROM tb_jogos;

SELECT * FROM tb_jogos WHERE preco > 500;

SELECT * FROM tb_jogos WHERE preco < 500;

UPDATE tb_jogos SET genero = "Ação/Corrida" WHERE id = 8;