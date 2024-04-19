-- EXERCICIOS DB_JOINS
-- 1)
SELECT cliente.NOME, venda.DUPLIC, venda.valor
FROM cliente INNER JOIN venda
ON cliente.CODCLI = venda.CODCLI
WHERE cliente.NOME LIKE 'PCTEC%';

-- 2)
SELECT cliente.NOME, venda.vencto
FROM cliente INNER JOIN venda
ON cliente.CODCLI = venda.CODCLI
WHERE vencto BETWEEN '2004-11-01' and '2004-11-30'
ORDER BY vencto;

-- 3)
SELECT cliente.NOME, venda.duplic
FROM cliente INNER JOIN venda
ON cliente.CODCLI = venda.CODCLI
WHERE venda.vencto::TEXT LIKE '%-10-%'

-- 4)
SELECT cliente.NOME, COUNT(*), SUM(venda.valor) AS QTDE
FROM cliente INNER JOIN venda
ON cliente.CODCLI = venda.CODCLI
GROUP BY cliente.NOME

-- 5)
SELECT cli.NOME, COUNT(*), SUM(ven.valor) AS QTDE
FROM cliente cli INNER JOIN venda ven
ON cli.CODCLI = ven.CODCLI
GROUP BY cli.NOME

-- 6)
SELECT CLI.NOME, COUNT(*) AS VENCIDOS
FROM cliente cli INNER JOIN venda ven
ON cli.CODCLI = ven.CODCLI
WHERE vencto < '2003-12-31'
GROUP BY cli.NOME

-- 7)
SELECT CLI.NOME, COUNT(*) AS VENCIDOS
FROM cliente cli INNER JOIN venda ven
ON cli.CODCLI = ven.CODCLI
WHERE 
GROUP BY cli.NOME