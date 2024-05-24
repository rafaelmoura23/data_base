-- 1
CREATE TABLE Funcionario (
    contato varchar(30),
    data_contratacao date,
    id_funcionario int not null PRIMARY KEY,
    nome varchar(255),
    sobrenome varchar(255),
    cargo varchar(255),
    FOREIGN KEY (cargo) REFERENCES Cargo (nome_cargo)
);

-- 2
CREATE TABLE Reserva (
    id_reserva serial PRIMARY KEY,
    data_reserva date not null,
    data_devolucao date not null,
    id_carro int not null,
    id_cliente int not null,
    FOREIGN KEY (id_carro) REFERENCES Carro (id_carro),
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);

-- 3
CREATE TABLE Devolucao (
    id_devolucao serial PRIMARY KEY,
    data_devolucao date not null,
    condicao_veiculo varchar(255) not null,
    custos_adicionais money,
    id_locacao int not null,
    FOREIGN KEY (id_locacao) REFERENCES Locacao (id_locacao)
);

-- 4
CREATE TABLE Manutencao (
    id_manutencao serial PRIMARY KEY,
    custo money not null,
    km varchar(10) not null,
    data_manutencao date not null,
    tipo_manutencao varchar(255) not null,
    descricao varchar(255) not null
);

-- 5
CREATE TABLE Seguro (
    id_seguro serial PRIMARY KEY,
    seguradora varchar(255) not null,
    tipo_seguro varchar(255) not null,
    cobertura varchar(255) not null,
    id_carro int not null,
    FOREIGN KEY (id_carro) REFERENCES Carro (id_carro)
);


-- SELECT
-- 1
SELECT * FROM clientes;
-- 4
SELECT * FROM funcionario;
-- 5
SELECT c.nome, c.sobrenome
FROM Clientes c
INNER JOIN Locacao l ON c.id_cliente = l.id_cliente
WHERE l.id_carro = 1;
-- 6
SELECT ca.modelo, ca.ano, ca.placa
FROM Carro ca
INNER JOIN Locacao l ON ca.id_carro = l.id_carro
WHERE l.id_cliente = 1;
-- 12
SELECT cli.nome, car.modelo
FROM Clientes cli
JOIN locacao l ON cli.id_cliente = l.id_cliente
JOIN carro car ON l.id_carro = car.id_carro
-- 14
SELECT cli.nome, car.modelo
FROM Clientes cli
JOIN locacao l ON cli.id_cliente = l.id_cliente
JOIN carro car ON l.id_carro = car.id_carro
