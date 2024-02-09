-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cursos (
modalidade varchar(50),
cod_cursos int(ai) PRIMARY KEY,
nome_curso varchar(100),
valor money,
observacao varchar(255),
vagas_disponivel int,
duracao int,
periodo varchar(50)
)

CREATE TABLE alunos (
telefone varchar(14),
endereco varchar(100),
nome varchar(100),
data_nascimento datetime,
cpf varchar(14),
email varchar(100),
responsavel varchar(100),
cod_aluno int(ai) PRIMARY KEY
)

