CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO tb_classes (nome_classe, descricao)
VALUES 
('Caçador', 'Luta de perto e se esconde nas sombras.'),
('Mago', 'Usa feitiços potentes para atacar de longe.'),
('Guerreiro', 'É forte e aguenta bem nos combates.'),
('Curandeiro', 'Cuida e cura os aliados.'),
('Arqueiro', 'Atira com precisão usando arco e flechas.');

CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe INT NOT NULL,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe)
VALUES 
('Sung Jin-Woo', 5000, 3500, 1),
('Cha Hae-In', 2000, 1800, 2),
('Go Gun-Hee', 1500, 1200, 3),
('Baek Yoon-Ho', 2200, 2000, 4),
('Yoo Jin-Ho', 1800, 1500, 5),
('Igris', 2800, 2400, 3),
('Tusk', 2600, 2100, 2),
('Beru', 3200, 2700, 1);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.nome AS personagem, c.nome_classe AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe;

SELECT p.nome AS personagem, c.nome_classe AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';

