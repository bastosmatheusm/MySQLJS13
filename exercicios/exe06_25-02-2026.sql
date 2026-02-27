CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    area_conhecimento VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_cursos (
    id_curso BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    nivel VARCHAR(50) NOT NULL,
    instrutor VARCHAR(100) NOT NULL,
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY (id_curso),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria)
        REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_categorias (nome, descricao, area_conhecimento)
VALUES	('Programação', 'Cursos de desenvolvimento de software e sistemas', 'Tecnologia'),
		('Design', 'Cursos de design gráfico, UI/UX e criação visual', 'Criatividade'),
		('Marketing', 'Cursos de marketing digital, SEO e redes sociais', 'Negócios'),
		('Data Science', 'Cursos de análise de dados, machine learning e IA', 'Tecnologia'),
		('Gestão', 'Cursos de gestão de projetos, liderança e empreendedorismo','Negócios');

INSERT INTO tb_cursos (nome, carga_horaria, valor, nivel, instrutor, id_categoria)
VALUES	('Java do Zero ao Avançado', 80, 950.00, 'Avançado', 'Carlos Mendes', 1),
		('JavaScript Completo', 60, 750.00, 'Intermediário', 'Ana Souza', 1),
		('UI/UX Design na Prática', 40, 620.00, 'Intermediário', 'Julia Ferreira', 2),
		('Marketing Digital para Negócios', 30, 480.00, 'Básico', 'Pedro Alves', 3),
		('Python para Data Science', 90, 1100.00, 'Avançado', 'Marcos Lima', 4),
		('Gestão Ágil com Scrum', 20, 390.00, 'Básico', 'Fernanda Costa', 5),
		('Machine Learning com Python', 100, 1300.00, 'Avançado', 'João Ribeiro', 4),
		('Design Gráfico com Photoshop', 50, 580.00, 'Intermediário', 'Camila Torres', 2);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT
    c.id_curso,
    c.nome AS curso,
    c.carga_horaria,
    c.valor,
    c.nivel,
    c.instrutor,
    cat.nome AS categoria,
    cat.area_conhecimento
FROM tb_cursos c INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;

SELECT
    c.id_curso,
    c.nome AS curso,
    c.carga_horaria,
    c.valor,
    c.nivel,
    c.instrutor,
    cat.nome AS categoria,
    cat.area_conhecimento
FROM tb_cursos c INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria WHERE cat.nome = 'Programação';