-- ATIVIDADE CRIAÇÃO DE TABELAS E ALTERAÇÃO DE TABELAS --

-- ATIVIDADE 1 --
CREATE TABLE FORNECEDOR(
	Fcodigo int not null primary key,
	Fnome varchar(50) not null,
	Status varchar(50) default 'ativo',
	Cidade varchar(50) not null
);

CREATE TABLE PECA(
	Pcodigo int not null primary key,
	Pnome varchar(50) not null,
	Cor varchar(50) not null,
	Peso decimal not null,
	Cidade varchar(50) not null
);

CREATE TABLE INSTITUICAO(
	Icodigo int not null primary key,
	nome varchar(50) not null
);

CREATE TABLE PROJETO(
	PRcod int not null primary key,
	PRnome varchar(50) not null,
	Cidade varchar(50) not null,
	Icodigo int not null,
	FOREIGN KEY (Icodigo) REFERENCES INSTITUICAO (Icodigo)
);

CREATE TABLE FORNECIMENTO(
	Fcodigo int not null,
	Pcodigo int not null,
	PRcod int not null,
	FOREIGN KEY (Fcodigo) REFERENCES FORNECEDOR (Fcodigo),
	FOREIGN KEY (Pcodigo) REFERENCES PECA (Pcodigo),
	FOREIGN KEY (PRcod) REFERENCES PROJETO (PRcod),
	Quantidade int not null
)

-- SELECTS
SELECT * FROM fornecedor;
SELECT * FROM peca;
SELECT * FROM instituicao;
SELECT * FROM projeto;
SELECT * FROM fornecimento

-- ATIVIDADE 2 --

-- TABLE CIDADE | INSTITUICAO --
ALTER TABLE instituicao RENAME TO cidade;
ALTER TABLE cidade RENAME COLUMN Icodigo to Ccod;
ALTER TABLE cidade RENAME COLUMN nome to Cnome;
ALTER TABLE cidade ADD uf char(2) not null;

-- TABLE FORNECEDOR --
ALTER TABLE fornecedor RENAME COLUMN Fcodigo to Fcod;
ALTER TABLE fornecedor ADD fone varchar(11) not null;
ALTER TABLE fornecedor DROP COLUMN cidade;
ALTER TABLE fornecedor ADD Ccod int not null;
ALTER TABLE fornecedor ADD FOREIGN KEY(Ccod) REFERENCES Cidade (Ccod);

-- TABLE PECA --
ALTER TABLE peca RENAME COLUMN Pcodigo to Pcod;
ALTER TABLE peca DROP COLUMN cidade;
ALTER TABLE peca ADD Ccod int not null;
ALTER TABLE peca ADD FOREIGN KEY(Ccod) REFERENCES Cidade (Ccod);

-- TABLE PROJETO --
ALTER TABLE projeto ADD Ccod int not null;
ALTER TABLE projeto DROP COLUMN Icodigo;
ALTER TABLE PROJETO DROP COLUMN cidade;
ALTER TABLE projeto ADD FOREIGN KEY(Ccod) REFERENCES Cidade (Ccod);

-- TABLE FORNECIMENTO PERMANECE IGUAL --

-- SELECTS --
SELECT * FROM fornecedor;
SELECT * FROM peca;
SELECT * FROM cidade;
SELECT * FROM projeto;
SELECT * FROM fornecimento;

-- INDEX --
CREATE INDEX idx_fornecedor ON fornecedor(fcod);
CREATE INDEX idx_cidade ON cidade(ccod);
CREATE INDEX idx_projeto ON projeto(prcod);
CREATE INDEX idx_peca ON peca(pcod);

-- DROPS --
DROP TABLE fornecimento;
DROP TABLE peca;
DROP TABLE fornecedor;
DROP TABLE projeto;
DROP TABLE cidade;
