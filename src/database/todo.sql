CREATE TABLE categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL
);

CREATE TABLE tarefas (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100) NOT NULL,
prioridade VARCHAR(10) NOT NULL,
status VARCHAR(10) NOT NULL,
categoria_id INT,
FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

INSERT INTO categorias (nome) VALUES
('Escola'),
('Casa'),
('Pessoal');

INSERT INTO tarefas (titulo, prioridade, status, categoria_id) VALUES
('Estudar para a prova de PBE', 'alta', 'fazendo', 1),
('Lavar a louça', 'media', 'feita', 3),
('Arrumar o quarto', 'baixa', 'a_fazer', 2);

