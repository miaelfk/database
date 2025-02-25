CREATE DATABASE IF NOT EXISTS banco_ecommerce;
USE banco_ecommerce;

CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL
);

INSERT INTO produtos (nome, descricao, categoria, preco) VALUES
('Notebook', 'Notebook com 8GB RAM e 256GB SSD', 'Eletrônicos', 3500.00),
('Smartphone', 'Smartphone com câmera de 64MP', 'Eletrônicos', 2500.00),
('Teclado Mecânico', 'Teclado mecânico RGB', 'Acessórios', 450.00),
('Mouse Gamer', 'Mouse com sensor óptico de alta precisão', 'Acessórios', 320.00),
('Camiseta', 'Camiseta básica unissex', 'Vestuário', 80.00),
('Tênis Esportivo', 'Tênis confortável para corrida', 'Calçados', 300.00),
('Fone de Ouvido Bluetooth', 'Fone sem fio com cancelamento de ruído', 'Eletrônicos', 800.00),
('Mochila Executiva', 'Mochila resistente à água para laptop', 'Acessórios', 150.00);

SELECT DISTINCT nome, descricao, categoria, preco
FROM produtos
WHERE preco > 500;

SELECT DISTINCT nome, descricao, categoria, preco
FROM produtos
WHERE preco < 500;

UPDATE produtos SET preco = 550.00 WHERE id = 3;
