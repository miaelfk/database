CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
('Hidráulica', 'Produtos relacionados a encanamentos e sistemas hidráulicos.'),
('Elétrica', 'Materiais para instalações elétricas.'),
('Ferramentas', 'Ferramentas manuais e elétricas.'),
('Acabamento', 'Produtos para acabamento, como pisos e revestimentos.'),
('Construção', 'Materiais básicos como cimento e tijolos.');

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
('Torneira de Metal', 120.00, 50, 1),
('Fio Elétrico 10mm', 75.00, 100, 2),
('Parafusadeira', 250.00, 30, 3),
('Revestimento Cerâmico', 150.00, 20, 4),
('Cimento CP-II', 30.00, 200, 5),
('Chave de Fenda', 25.00, 80, 3),
('Lâmpada LED', 20.00, 150, 2),
('Tijolo Vermelho', 1.50, 1000, 5);

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome_produto AS produto, c.nome_categoria AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Hidráulica';