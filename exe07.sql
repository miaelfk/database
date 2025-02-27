CREATE DATABASE IF NOT EXISTS db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE IF NOT EXISTS tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES 
('Frutas', 'Variedade de frutas frescas.'),
('Verduras', 'Verduras frescas e selecionadas.'),
('Legumes', 'Legumes variados para preparo culinário.'),
('Grãos', 'Grãos como feijão, lentilha e outros.'),
('Especiarias', 'Temperos e ervas aromáticas.');

CREATE TABLE IF NOT EXISTS tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categoria) VALUES 
('Maçã Gala', 5.90, 100, 1),
('Alface Crespa', 2.50, 80, 2),
('Cenoura', 3.90, 60, 3),
('Feijão Preto', 8.90, 40, 4),
('Manjericão Fresco', 4.50, 30, 5),
('Banana Prata', 4.00, 120, 1),
('Tomate Italiano', 6.50, 70, 3),
('Lentilha', 12.00, 25, 4);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Frutas';
