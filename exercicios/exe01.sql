CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    salario DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE tb_funcionarios MODIFY salario DECIMAL(8, 2);

INSERT INTO tb_funcionarios(nome, cargo, data_nascimento, salario)
VALUES 	("Matheus", "Desenvolvedor", "1995-06-20", 15000.00),
		("Julianne", "Dentista", "2001-05-16", 9000.00),
		("Luiz", "Advogado", "1997-12-10", 12000.00),
        ("Elizabeth", "Faxineira", "1968-08-24", 1600.00),
        ("Thainá", "Enfermeira", "1995-07-20", 3400.00)
;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;


UPDATE tb_funcionarios SET salario = 4200.00 WHERE id = 5;

SELECT nome , cargo, DATE_FORMAT(Data_nascimento, '%d/%m/%Y') AS Data_Nascimento, CONCAT('R$ ', FORMAT(Salario, 2, 'pt_BR')) AS Salario FROM tb_funcionarios;