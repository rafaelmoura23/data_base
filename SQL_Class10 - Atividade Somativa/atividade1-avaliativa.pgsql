-- CREATE DATABASE
CREATE DATABASE AV1;

-- Tabela clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(20)
);

-- Tabela pizzas
CREATE TABLE pizzas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    ingredientes TEXT
);

-- Tabela pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    data DATE,
    total DECIMAL(10, 2),
    cliente_id INT,
    status VARCHAR(255),
    funcionario_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);

-- Tabela itens_pedido
CREATE TABLE itens_pedido (
    id SERIAL PRIMARY KEY,
    pedido_id INT,
    pizza_id INT,
    tamanho VARCHAR(50),
    quantidade INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id)
);

-- Tabela funcionarios
CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES funcionarios(id)
);

ALTER TABLE funcionarios
ADD COLUMN area_id INT,
ADD FOREIGN KEY (area_id) REFERENCES areas_trabalho(id);


-- Tabela promocoes
CREATE TABLE promocoes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT,
    pizza_id INT,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id)
);

-- Tabela entregas
CREATE TABLE entregas (
    id SERIAL PRIMARY KEY,
    pedido_id INT,
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(100),
    cep VARCHAR(20),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);

CREATE TABLE areas_trabalho (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255)
);

-- INSERTS
INSERT INTO clientes (nome, email, telefone) VALUES
    ('João Silva', 'joao.silva@example.com', '(11) 99999-9999'),
    ('Maria Oliveira', 'maria.oliveira@example.com', '(11) 88888-8888'),
    ('Pedro Santos', 'pedro.santos@example.com', '(11) 77777-7777'),
    ('Ana Costa', 'ana.costa@example.com', '(11) 66666-6666'),
    ('Carlos Pereira', 'carlos.pereira@example.com', '(11) 55555-5555');

INSERT INTO pizzas (nome, ingredientes) VALUES
    ('Pizza de Calabresa', 'Molho de tomate, queijo, calabresa, cebola, azeitona'),
    ('Pizza de Marguerita', 'Molho de tomate, queijo, tomate, manjericão'),
    ('Pizza de Frango com Catupiry', 'Molho de tomate, queijo, frango desfiado, catupiry'),
    ('Pizza Portuguesa', 'Molho de tomate, queijo, presunto, cebola, ovo, ervilha'),
    ('Pizza Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo prato, queijo gorgonzola, queijo parmesão');

INSERT INTO funcionarios (nome, cargo, supervisor_id) VALUES
    ('José Pereira', 'Atendente', NULL),
    ('Mariana Costa', 'Cozinheira', NULL),
    ('Fernando Oliveira', 'Entregador', NULL),
    ('Paula Santos', 'Gerente', NULL),
    ('Marcos Silva', 'Atendente', 1);

INSERT INTO promocoes (nome, descricao, pizza_id) VALUES
    ('Promoção da Semana', 'Desconto de 20% na pizza de calabresa', 1),
    ('Promoção Especial', 'Leve 2 pizzas e pague 1', 3),
    ('Promoção de Verão', 'Desconto de 30% na pizza de marguerita', 2),
    ('Promoção Dia das Mães', 'Ganhe uma pizza doce na compra de qualquer pizza salgada', 4),
    ('Promoção de Inverno', 'Desconto de 25% na pizza quatro queijos', 5);

INSERT INTO pedidos (data, total, cliente_id, status, funcionario_id) VALUES
    ('2024-04-20', 50.00, 1, 'Em andamento', 5),
    ('2024-04-21', 35.00, 2, 'Concluído', 4),
    ('2024-04-22', 42.50, 3, 'Em andamento', 1),
    ('2024-04-23', 27.50, 4, 'Concluído', 3),
    ('2024-04-24', 38.00, 5, 'Em andamento', 2);

INSERT INTO itens_pedido (pedido_id, pizza_id, tamanho, quantidade) VALUES
    (1, 1, 'Grande', 1),
    (1, 3, 'Grande', 2),
    (2, 2, 'Média', 1),
    (3, 4, 'Grande', 1),
    (4, 5, 'Média', 2);

INSERT INTO entregas (pedido_id, endereco, cidade, estado, cep) VALUES
    (1, 'Rua A, 123', 'São Paulo', 'SP', '01010-010'),
    (3, 'Rua B, 456', 'São Paulo', 'SP', '02020-020'),
    (5, 'Rua C, 789', 'São Paulo', 'SP', '03030-030');

INSERT INTO areas_trabalho (nome) VALUES
    ('Atendimento ao Cliente'),
    ('Cozinha'),
    ('Entrega'),
    ('Gerência');


-- SELECTS
SELECT * FROM clientes;

SELECT * FROM pizzas;

SELECT * FROM funcionarios;

SELECT * FROM pedidos;

SELECT * FROM promocoes;

SELECT * FROM itens_pedido;

SELECT * FROM entregas;

SELECT * FROM areas_trabalho;

-- EXERCÍCIOS (1ª PARTE)
-- 1
SELECT 
    pedidos.id, pedidos.data, pedidos.total,
    clientes.nome, clientes.telefone
FROM 
    pedidos
FULL JOIN 
    clientes ON pedidos.cliente_id = clientes.id;

-- 2
SELECT
    itens_pedido.id,
    pizzas.nome, itens_pedido.quantidade, pizzas.ingredientes, itens_pedido.tamanho
FROM 
    itens_pedido
INNER JOIN
    pizzas ON itens_pedido.pizza_id = pizzas.id;

-- 3
SELECT
    fun.id, fun.nome,
    areas_trabalho.nome
FROM
    funcionarios as fun
JOIN
    areas_trabalho ON fun.id = areas_trabalho.id;

-- 4
SELECT
    pedidos.id, pedidos.status, pedidos.total,
    funcionarios.nome
FROM 
    pedidos
JOIN
    funcionarios ON pedidos.funcionario_id = funcionarios.id;

-- 5
SELECT
    clientes.id, clientes.nome,
    pedidos.id, pedidos.data, pedidos.total, pedidos.status
FROM
    clientes
JOIN
    pedidos ON clientes.id = pedidos.cliente_id;

-- 6
SELECT 
    pizzas.nome, pizzas.ingredientes
FROM pizzas

-- 7

