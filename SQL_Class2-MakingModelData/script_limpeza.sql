-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE produtos (
id_produto int PRIMARY KEY,
categoria_prod varchar(255),
nome_produto varchar(255),
preco money
)

CREATE TABLE colaborador (
id_colaborador int PRIMARY KEY,
nome_colaborador varchar(255),
endereco varchar(255),
data_nascimento date,
salario money
)

CREATE TABLE categoria_cliente (
id_categoria int PRIMARY KEY,
tipo_cliente varchar,
desconto int
)

CREATE TABLE clientes (
cpf_cliente int PRIMARY KEY,
data_nascimento date,
endereco varchar(255)
)

CREATE TABLE meios_pagamento (
id_pagamento int PRIMARY KEY,
tipo_pagamento varchar(255)
)

CREATE TABLE transporte (
meio_transporte varchar(255),
compania_entrega varchar(255),
frete money,
status varchar(255),
id_transporte int PRIMARY KEY
)

CREATE TABLE pedidos (
data date,
id_venda int PRIMARY KEY
)

