CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças.'),
('Higiene', 'Produtos para cuidados pessoais e higiene.'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele.'),
('Suplementos', 'Produtos nutricionais e vitamínicos.'),
('Infantil', 'Produtos voltados para crianças.');

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria)
VALUES 
('Paracetamol', 10.50, 100, 1),
('Shampoo Anticaspa', 25.00, 50, 2),
('Protetor Solar FPS50', 45.00, 30, 3),
('Vitamina C', 35.00, 20, 4),
('Fralda Descartável', 60.00, 40, 5),
('Ibuprofeno', 15.00, 80, 1),
('Creme Hidratante', 30.00, 25, 3),
('Sabonete Líquido Infantil', 20.00, 60, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
