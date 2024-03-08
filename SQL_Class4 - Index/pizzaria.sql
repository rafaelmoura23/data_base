-- ATIVIDADE PIZZARIA --

CREATE TABLE Clientes (
tipo_pagamento varchar(100),
cpf_cliente int PRIMARY KEY,
endereco_cliente varchar(100),
nome_cliente varchar(100),
id_pedido int
);

CREATE INDEX indx_cliente ON Clientes(cpf_cliente);

CREATE TABLE Funcionarios (
data_funcionario date,
tipo_funcionario varchar(100),
nome_funcionario varchar(100),
id_funcionarios int PRIMARY KEY
);

CREATE INDEX indx_funcionario ON Funcionarios(id_funcionarios);

CREATE TABLE Pedidos (
id_pedido int PRIMARY KEY,
tempo_entrega varchar(100),
status_pedido varchar(100),
data_pedido date
);

CREATE INDEX indx_pedido ON Pedidos(id_pedido);

CREATE TABLE Pizza (
id_pizza int PRIMARY KEY,
preco_pizza money,
tamanho_pizza varchar(100),
sabor_pizza varchar(100)
);

CREATE INDEX indx_pizza ON Pizza(id_pizza);

CREATE TABLE Produz (
id_pizza int,
id_funcionarios int,
FOREIGN KEY(id_pizza) REFERENCES Pizza (id_pizza),
FOREIGN KEY(id_funcionarios) REFERENCES Funcionarios (id_funcionarios)
);

CREATE TABLE Prepara (
id_pedido int,
id_funcionarios int,
FOREIGN KEY(id_pedido) REFERENCES Pedidos (id_pedido),
FOREIGN KEY(id_funcionarios) REFERENCES Funcionarios (id_funcionarios)
);

CREATE TABLE Encomenda (
id_pizza int,
id_pedido int,
FOREIGN KEY(id_pizza) REFERENCES Pizza (id_pizza)/*falha: chave estrangeira*/
);

ALTER TABLE Clientes ADD FOREIGN KEY(id_pedido) REFERENCES Pedidos (id_pedido);
