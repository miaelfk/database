CREATE DATABASE IF NOT EXISTS banco_rh;
USE banco_rh;

CREATE TABLE IF NOT EXISTS colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    salario DECIMAL(10,2) NOT NULL
);

INSERT INTO colaboradores (nome, cargo, email, salario) VALUES
('Sâmia França', 'Gerente de RH', 'samia.franca@empresa.com', 3500.00),
('João Santos', 'Assistente', 'joao.santos@empresa.com', 1800.50),
('Liam França', 'Analista de RH', 'lilicofranca@empresa.com', 2400.75),
('Cristiane Araujo', 'Estagiário', 'cristianearaujo@empresa.com', 1200.00),
('Luan França', 'Coordenadora', 'luanfranca@empresa.com', 4100.00);

SELECT DISTINCT nome, cargo, email, salario
FROM colaboradores
WHERE salario > 2000;

SELECT DISTINCT nome, cargo, email, salario
FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores SET salario = 3800.00 WHERE id = 1;



