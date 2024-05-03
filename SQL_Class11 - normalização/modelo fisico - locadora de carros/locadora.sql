CREATE TABLE Carro (
    ano int not null,
    modelo varchar(25) not null,
    id_carro int not null PRIMARY KEY,
    placa varchar(7) not null,
    tipo varchar(255) not null,
    disponibilidade varchar(255) not null
);

CREATE TABLE Clientes (
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    endereco varchar(255) not null,
    id_cliente int not null PRIMARY KEY,
    cidade varchar(255) not null,
    celular varchar(17) not null,
    estado varchar(255) not null,
    email varchar(255) not null,
    id_pagamento serial,
    FOREIGN KEY (id_pagamento) REFERENCES Pagamento (id_pagamento)
);

CREATE TABLE Cargo (
    nome_cargo varchar(255) not null,
    cod_cargo serial not null PRIMARY KEY,
    turno char(1) not null,
    id_funcionario int not null,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario)
);

CREATE TABLE Funcionario (
    contato varchar(30),
    data_contratacao date,
    id_funcionario int not null PRIMARY KEY,
    nome varchar(255),
    sobrenome varchar(255),
    cargo varchar(255),
    FOREIGN KEY (cargo) REFERENCES Cargo (nome_cargo)
);

CREATE TABLE Agência (
    endereco varchar(255) not null,
    contato varchar(12) not null,
    numero_agencia int not null PRIMARY KEY,
    estado varchar(255) not null,
    cidade varchar(255) not null
);

CREATE TABLE Pagamento (
    id_pagamento serial PRIMARY KEY,
    status_pagamento varchar(20) not null,
    forma_pagamento varchar(40) not null,
    valor money not null,
    data_pagamento date not null,
    id_comprovante int not null,
    comprovante varchar(20) not null,
    UNIQUE (id_pagamento, id_comprovante)
);

CREATE TABLE Manutencao (
    id_manutencao serial PRIMARY KEY,
    custo money not null,
    km varchar(10) not null,
    data_manutencao date not null,
    tipo_manutencao varchar(255) not null,
    descricao varchar(255) not null
);

CREATE TABLE Feedback (
    id_feedback serial PRIMARY KEY,
    data_feedback date not null,
    comentario varchar(255) not null,
    avaliacao decimal(5,2) not null
);

CREATE TABLE Locacao (
    data_locacao date not null,
    data_devolucao date not null,
    id_locacao serial PRIMARY KEY,
    valor_total money not null,
    id_carro int not null,
    id_cliente int not null,
    FOREIGN KEY (id_carro) REFERENCES Carro (id_carro),
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);

CREATE TABLE Verifica (
    id_funcionario int not null,
    numero_agencia int not null,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario),
    FOREIGN KEY (numero_agencia) REFERENCES Agência (numero_agencia),
    PRIMARY KEY (id_funcionario, numero_agencia)
);

CREATE TABLE Recebe (
    id_manutencao int not null,
    id_carro int not null,
    FOREIGN KEY (id_manutencao) REFERENCES Manutencao (id_manutencao),
    FOREIGN KEY (id_carro) REFERENCES Carro (id_carro),
    PRIMARY KEY (id_manutencao, id_carro)
);

CREATE TABLE Envia (
    id_envia serial PRIMARY KEY,
    observacao varchar(255) not null,
    id_feedback int not null,
    id_cliente int not null,
    FOREIGN KEY (id_feedback) REFERENCES Feedback (id_feedback),
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);
