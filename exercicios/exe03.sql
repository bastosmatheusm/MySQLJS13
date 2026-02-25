CREATE DATABASE db_registro_escolar;

USE db_registro_escolar;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    serie VARCHAR(50) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, turno, sexo)
VALUES 	('Ana Beatriz Silva', '2010-05-12', '7º ano', 'Manhã', 'F'),
		('Lucas Pereira Santos', '2009-08-23', '8º ano', 'Manhã', 'M'),
		('Mariana Oliveira Costa', '2011-02-03', '6º ano', 'Tarde', 'F'),
		('Gabriel Rodrigues Lima', '2008-11-15', '9º ano', 'Manhã', 'M'),
		('Fernanda Alves Rocha', '2012-07-30', '5º ano', 'Tarde', 'F'),
		('Rafael Monteiro Araujo', '2009-01-19', '8º ano', 'Tarde', 'M'),
		('Beatriz Nogueira Pinto', '2011-09-05', '6º ano', 'Manhã', 'F'),
		('Thiago Martins Farias', '2008-04-27', '9º ano', 'Manhã', 'M');
        
ALTER TABLE tb_estudantes ADD nota DECIMAL(4,1) CHECK (nota BETWEEN 0 AND 10);

UPDATE tb_estudantes SET nota = 8.5 WHERE id = 1;
UPDATE tb_estudantes SET nota = 7.0 WHERE id = 2;
UPDATE tb_estudantes SET nota = 9.2 WHERE id = 3;
UPDATE tb_estudantes SET nota = 5.8 WHERE id = 4;
UPDATE tb_estudantes SET nota = 8.0 WHERE id = 5;
UPDATE tb_estudantes SET nota = 7.5 WHERE id = 6;
UPDATE tb_estudantes SET nota = 9.0 WHERE id = 7;
UPDATE tb_estudantes SET nota = 4.5 WHERE id = 8;

select * from tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.9 WHERE id = 4;