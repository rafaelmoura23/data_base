-- 1. **SELECT:*
-- 1.1
SELECT * FROM CARRO; 

-- 1.2
SELECT c.nome, c.sobrenome, l.data_locacao
FROM Clientes c
JOIN Locacao l ON c.id_cliente = l.id_cliente
WHERE l.data_locacao BETWEEN '2024-02-01' AND '2024-05-30';

-- 1.3
ALTER TABLE Funcionario
ADD COLUMN id_agencia INT;

ALTER TABLE Funcionario
ADD CONSTRAINT fk_funcionario_agencia
FOREIGN KEY (id_agencia) REFERENCES Agencia(numero_agencia);

SELECT f.nome, a.numero_agencia
FROM funcionario f JOIN agencia a
ON f.id_agencia = a.numero_agencia
WHERE a.numero_agencia = 1;

-- 1.4
SELECT p.comprovante, p.valor, c.nome, c.sobrenome
FROM pagamento p JOIN clientes c
ON p.id_pagamento = c.id_pagamento
WHERE c.nome = 'Maria';

-- 1.5
SELECT c.modelo, m.data_manutencao, m.descricao
FROM Carro c
JOIN Recebe r ON c.id_carro = r.id_carro
JOIN Manutencao m ON r.id_manutencao = m.id_manutencao
WHERE m.custo > '10';

-- 1.6
SELECT c.nome, c.sobrenome, COUNT(*) AS alugueis
FROM Clientes c
JOIN Locacao l ON c.id_cliente = l.id_cliente
GROUP BY c.id_cliente
HAVING COUNT(*) > 1;

-- 1.7
ALTER TABLE Funcionario
ADD COLUMN cidade VARCHAR(255);

SELECT c.modelo, cl.nome, cl.cidade, f.nome, f.cidade
FROM Carro c
JOIN Locacao l ON c.id_carro = l.id_carro
JOIN Clientes cl ON l.id_cliente = cl.id_cliente
JOIN Funcionario f ON cl.cidade = f.cidade
WHERE f.nome = 'Mariana';

-- 2. **UPDATE**
--2.1
UPDATE locacao 
SET valor_total = valor_total * 1.2 
WHERE id_carro IN (SELECT id_carro FROM carro WHERE modelo LIKE '%Toyota%');
SELECT * FROM locacao;

--2.2
UPDATE locacao
SET data_devolucao = '2024-05-09'
WHERE id_locacao = 1

--2.3
UPDATE carro
SET disponibilidade = 'Indisponível'
WHERE modelo LIKE '%Toyota%'

UPDATE carro
SET disponibilidade = 'Disponível'
WHERE modelo LIKE '%Toyota%'

-- 3. **ALTER TABLE**
-- 3.1
ALTER TABLE carro
ADD COLUMN disponibilidade VARCHAR(255);

-- 3.2
ALTER TABLE pagamento
ALTER COLUMN valor TYPE MONEY;

-- 3.3
ALTER TABLE clientes
DROP COLUMN estado


-- 4. **JOIN**
-- 4.1
SELECT clientes.nome, carro.modelo, locacao.data_locacao
FROM locacao 
JOIN carro ON locacao.id_carro = carro.id_carro
JOIN clientes ON locacao.id_cliente = clientes.id_cliente;

-- 4.2
ALTER TABLE Carro
ADD COLUMN id_agencia INT;

ALTER TABLE Carro
ADD CONSTRAINT fk_carro_agencia
FOREIGN KEY (id_agencia) REFERENCES Agencia(numero_agencia);

SELECT c.nome, p.valor
FROM Pagamento p
JOIN Locacao l ON p.id_locacao = l.id_locacao
JOIN Clientes c ON l.id_cliente = c.id_cliente;

-- 4.3
SELECT c.nome, car.modelo, f.comentario
FROM Feedback f
JOIN Envia e ON f.id_feedback = e.id_feedback
JOIN Clientes c ON e.id_cliente = c.id_cliente
JOIN Locacao l ON c.id_cliente = l.id_cliente
JOIN Carro car ON l.id_carro = car.id_carro;

-- 5.**INNER JOIN**
-- 5.1
SELECT c.modelo, a.numero_agencia
FROM carro c INNER JOIN agencia a
ON c.id_agencia = a.numero_agencia
WHERE a.numero_agencia = 12;

-- 5.2
SELECT l.data_locacao, l.data_devolucao, c.cidade, c.nome
FROM Locacao l
INNER JOIN Clientes c ON l.id_cliente = c.id_cliente
WHERE c.cidade = 'São Paulo';

-- 5.3
ALTER TABLE verifica
ADD COLUMN id_carro INT;

ALTER TABLE verifica
ADD CONSTRAINT fk_verifica_carro
FOREIGN KEY (id_carro) REFERENCES carro(id_carro);

SELECT DISTINCT f.*
FROM Funcionario f
INNER JOIN Verifica v ON f.id_funcionario = v.id_funcionario
INNER JOIN Carro c ON v.id_carro = c.id_carro
WHERE c.modelo LIKE '%Toyota%';

-- 6.**LEFT JOIN**
-- 6.1
SELECT car.modelo, f.comentario
FROM Feedback f
JOIN Envia e ON f.id_feedback = e.id_feedback
JOIN Clientes c ON e.id_cliente = c.id_cliente
JOIN Locacao l ON c.id_cliente = l.id_cliente
JOIN Carro car ON l.id_carro = car.id_carro;

-- 6.2
SELECT * FROM clientes;

-- 6.3
SELECT a.*, COUNT(c.id_carro) AS total_carros_disponiveis
FROM Agencia a
LEFT JOIN Carro c ON a.numero_agencia = c.numero_agencia AND c.disponibilidade = 'Disponível'
GROUP BY a.numero_agencia;

-- 7.**RIGHT JOIN**
-- 7.1
SELECT * FROM feedback;

-- 7.2
SELECT * FROM carro
WHERE disponibilidade = 'Disponível';

-- 7.3
SELECT * FROM manutencao;

--8.**SUBCONSULTAS(SUBQUERIES)**
-- 8.1
SELECT id_cliente, COUNT(*) AS qtd_locacoes
FROM Locacao
GROUP BY id_cliente
HAVING COUNT(*) > 1;

-- 8.2
-- FEEDBACK É STRING NÃO DOUBLE/INT

--9.**AGREGAÇÕES**
SELECT SUM(valor) AS total_pagamentos
FROM Pagamento
WHERE data_pagamento BETWEEN '2024-04-04' AND '2024-04-10';

-- 9.1
SELECT COUNT(*) AS total_carros_disponiveis
FROM Carro
WHERE disponibilidade = 'Disponível';

SELECT SUM(valor_total) AS total_arrecadado
FROM Locacao
WHERE data_locacao BETWEEN '2024-02-01' AND '2024-05-09';


-- 9.2
SELECT modelo, COUNT(*) AS quantidade
FROM Carro
GROUP BY modelo;

SELECT DATE_TRUNC('month', data_locacao) AS mes, SUM(valor_total) AS total_alugueis
FROM Locacao
GROUP BY mes;

SELECT forma_pagamento, SUM(valor) AS total_pagamentos
FROM Pagamento
GROUP BY forma_pagamento;

-- 9.3
SELECT COUNT(*) AS total_carros_agencia_X
FROM Carro
WHERE disponibilidade = 'Disponível' AND id_agencia = 1;

SELECT SUM(valor_total) AS total_arrecadado
FROM Locacao l
JOIN Clientes c ON l.id_cliente = c.id_cliente
WHERE c.cidade = 'Belo Horizonte';


-- 9.4
SELECT COUNT(*) AS total_alugueis_excedentes
FROM Locacao
WHERE valor_total > '500';

SELECT SUM(valor) AS total_pagamentos
FROM Pagamento
WHERE id_locacao IN (
    SELECT id_locacao
    FROM Locacao
    GROUP BY id_cliente
    HAVING COUNT(*) > 1
);




SELECT * FROM LOCACAO;
SELECT * FROM agencia;
SELECT * FROM carro;
SELECT * FROM manutencao;
SELECT * FROM recebe;
SELECT * FROM funcionario;
SELECT * FROM pagamento;
SELECT * FROM clientes;
SELECT * FROM verifica;
SELECT * FROM envia;



-- 7.**RIGHT JOIN**
-- 7.1


-- 7.2



--7.3



-- SELECTS
