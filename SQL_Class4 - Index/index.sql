CREATE TABLE TBL_CLIENTES(
	cod_cli int,
	nome varchar(50)
)

SELECT * FROM tbl_clientes

-- CRIANDO INDEX | DEIXA A CONSULTA MAIS RAPIDA --
CREATE INDEX idx_cli_cod ON TBL_CLIENTES(cod_cli)

CREATE INDEX idx_nome ON TBL_CLIENTES(nome)

DROP INDEX idx_cli_cod