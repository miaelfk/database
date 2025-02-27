CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
('Tecnologia', 'Cursos relacionados a programação e TI.'),
('Negócios', 'Cursos sobre gestão, marketing e empreendedorismo.'),
('Saúde', 'Cursos voltados para a área de saúde e bem-estar.'),
('Design', 'Cursos de design gráfico e UX/UI.'),
('Idiomas', 'Cursos para aprender novos idiomas.');

CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    carga_horaria INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_cursos (nome_curso, valor, carga_horaria, id_categoria)
VALUES 
('Desenvolvimento Web', 800.00, 120, 1),
('Marketing Digital', 600.00, 100, 2),
('Primeiros Socorros', 500.00, 40, 3),
('Design de Interfaces', 750.00, 80, 4),
('Inglês Básico', 400.00, 60, 5),
('Java para Iniciantes', 900.00, 150, 1),
('Gestão de Projetos', 1000.00, 120, 2),
('Espanhol Avançado', 700.00, 90, 5);

SELECT * FROM tb_cursos WHERE valor > 500;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%C%';

SELECT c.nome_curso AS curso, cat.nome_categoria AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;

SELECT c.nome_curso AS curso, cat.nome_categoria AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Tecnologia';