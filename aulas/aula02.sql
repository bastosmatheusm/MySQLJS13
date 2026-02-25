CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    PRIMARY KEY(id)
);

-- Comandos de manipulação de dados

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 1000, "2026-03-24", 8.99);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES 	("banana", 15000, "2026-03-04", 12.50),
		("morango", 15000, "2026-03-14", 22.00),
		("alface", 15000, "2026-03-01", 6.50),
        ("beterraba", 15000, "2026-03-24", 9.50)
;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("kiwi", 1000, "2026-03-24", 25.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2;

SELECT * FROM tb_produtos WHERE preco > 10.00;

SELECT * FROM tb_produtos WHERE nome = "banana" OR preco > 10.00;

SELECT * FROM tb_produtos WHERE nome = "banana" AND preco > 12.50;

SELECT * FROM tb_produtos WHERE nome != "banana";

SELECT nome , DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Valdade, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS Preco FROM tb_produtos;

UPDATE tb_produtos SET preco = 8.99 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 6;

SET SQL_SAFE_UPDATES = 1;

-- Comandos Estruturais 

ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

ALTER TABLE tb_produtos ADD descricao varchar(500);

ALTER TABLE tb_produtos CHANGE descricao descricao_Produto varchar(500);

ALTER TABLE tb_produtos DROP descricao_Produto;