CREATE TABLE contatos (
    id_contato INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    cell VARCHAR(255) NOT NULL,
    pizza VARCHAR(255) NOT NULL,
    cadastro DATE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO contatos VALUES (1, 'rafael', 'rafael@email.com', '19-1234-5678', 'Portuguesa');

select * from contatos;


CREATE TABLE IF NOT EXISTS pizzas (
    id_pizza INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco MONEY NOT NULL,
    tamanho CHAR NOT NULL
);

INSERT INTO pizzas VALUES (1, 'Frango com Catupity', 35.99, 'P');

SELECT * FROM pizzas;