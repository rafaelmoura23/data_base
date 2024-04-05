CREATE TABLE IF NOT EXISTS contatos (
    id_contato INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    cell VARCHAR(255) NOT NULL,
    pizza VARCHAR(255) NOT NULL,
    cadastro DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
)

INSERT INTO contatos VALUES (1, "Rafael", "rafael@email.com", "19-1234-5678", "Portuguesa")

SELECT * FROM contatos;
