CREATE DATABASE IF NOT EXISTS escola_db;
USE escola_db;

CREATE TABLE IF NOT EXISTS estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(20),
    nota DECIMAL(4,2) NOT NULL
);

INSERT INTO estudantes (nome, idade, turma, nota) VALUES
('Luan França', 15, '9A', 8.5),
('Carlos Silva', 16, '9B', 6.0),
('Fernanda Lima', 14, '8A', 7.2),
('Cristiane Araujo', 15, '9A', 5.5),
('Maria Oliveira', 17, '3A', 9.0),
('Clara Nunes', 16, '3B', 4.8),
('Sâmia França', 14, '8B', 7.8),
('Liam França', 15, '9C', 10.0);

SELECT DISTINCT nome, idade, turma, nota
FROM estudantes
WHERE nota > 7.0;

SELECT DISTINCT nome, idade, turma, nota
FROM estudantes
WHERE nota < 7.0;

UPDATE estudantes SET nota = 7.5 WHERE id = 2;