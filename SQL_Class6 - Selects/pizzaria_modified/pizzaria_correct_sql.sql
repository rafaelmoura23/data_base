-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

-- create
CREATE TABLE Produto (
codigo int  PRIMARY KEY,
nome varchar(100),
preco varchar(100),
estoque varchar(100)
);

CREATE TABLE Cliente (
cpf int PRIMARY KEY,
nome varchar(100),
telefone varchar(15),
endereco varchar(100)
);

CREATE TABLE Pedido (
total money,
data date,
numero int PRIMARY KEY,
cpf int,
FOREIGN KEY(cpf) REFERENCES Cliente (cpf)
);

CREATE TABLE Pedido_Produto (
codigo int ,
numero int,
quantidade int,
FOREIGN KEY(codigo) REFERENCES Produto (codigo),
FOREIGN KEY(numero) REFERENCES Pedido (numero)
);

-- select
SELECT * FROM Produto;
SELECT * FROM Cliente;
SELECT * FROM Pedido;
SELECT * FROM Pedido_Produto;