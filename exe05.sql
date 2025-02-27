CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
('Tradicional', 'Pizzas com os sabores mais comuns e populares.'),
('Premium', 'Pizzas com ingredientes especiais e de alta qualidade.'),
('Vegetariana', 'Pizzas feitas só com vegetais frescos e deliciosos.'),
('Doce', 'Pizzas com sabores doces para uma sobremesa.'),
('Especial', 'Pizzas exclusivas, criadas especialmente para você.');

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, id_categoria)
VALUES 
('Marguerita', 40.00, 'Média', 1),
('Calabresa', 45.00, 'Grande', 1),
('Quatro Queijos', 55.00, 'Grande', 2),
('Frango com Catupiry', 50.00, 'Média', 1),
('Brigadeiro', 35.00, 'Pequena', 4),
('Nutella', 60.00, 'Média', 4),
('Veggie Especial', 48.00, 'Grande', 3),
('Pizza da Casa', 70.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.nome_pizza AS pizza, c.nome_categoria AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome_pizza AS pizza, c.nome_categoria AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';