-- Criar o banco de dados
CREATE DATABASE AV1;

-- Tabela clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(20)
);

-- Tabela pizzas
CREATE TABLE pizzas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    ingredientes TEXT
);

-- Tabela pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
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
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    pizza_id INT,
    tamanho VARCHAR(50),
    quantidade INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id)
);

-- Tabela funcionarios
CREATE TABLE funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES funcionarios(id)
);

-- Tabela promocoes
CREATE TABLE promocoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    pizza_id INT,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id)
);

-- Tabela entregas
CREATE TABLE entregas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(100),
    cep VARCHAR(20),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);





-- 1.
SELECT pedidos.id, pedidos.data, pedidos.total,
       clientes.nome, clientes.email, clientes.telefone
FROM   pedidos
INNER JOIN   clientes ON pedidos.cliente_id = clientes.id;

-- 2.


-- 3.


-- 4.


-- 5.


-- 6.


-- 7.


-- 8.


-- 9.


-- 10.