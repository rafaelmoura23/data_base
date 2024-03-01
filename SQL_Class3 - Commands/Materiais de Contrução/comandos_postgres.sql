-- CRIAÇÃO DAS TABELAS - MATERIAL DE CONSTRUÇÃO
CREATE TABLE Produtos (
id_produtos int PRIMARY KEY,
preco_produto money,
tipo_produto varchar(100),
nome_produto varchar(100)
);

CREATE TABLE Clientes (
cpf_cliente int PRIMARY KEY,
endereco_cliente varchar(100),
tipo_pagamento varchar(100),
nome_cliente varchar(100),
id_pedidos int
);

CREATE TABLE Funcionarios (
id_funcionarios int PRIMARY KEY,
tipo_funcionario varchar(100),
data_nascimento date,
nome_funcionario varchar(100)
);

CREATE TABLE Pedidos (
id_pedidos int PRIMARY KEY,
tempo_entrega varchar(100),
status_pedido varchar(100),
data_pedido date
);

CREATE TABLE Processa (
id_pedidos int,
id_produtos int,
FOREIGN KEY(id_pedidos) REFERENCES Pedidos (id_pedidos),
FOREIGN KEY(id_produtos) REFERENCES Produtos (id_produtos)
);

CREATE TABLE Produz (
id_produtos int,
id_funcionarios int,
FOREIGN KEY(id_produtos) REFERENCES Produtos (id_produtos),
FOREIGN KEY(id_funcionarios) REFERENCES Funcionarios (id_funcionarios)
);

CREATE TABLE Prepara (
id_pedidos int,
id_funcionarios int,
FOREIGN KEY(id_pedidos) REFERENCES Pedidos (id_pedidos)
);

ALTER TABLE Clientes ADD FOREIGN KEY(id_pedidos) REFERENCES Pedidos (id_pedidos)

-- SELECIONANDO AS TABELAS
SELECT * FROM clientes
SELECT * FROM funcionarios
SELECT * FROM pedidos
SELECT * FROM prepara
SELECT * FROM processa
SELECT * FROM produtos
SELECT * FROM produz

