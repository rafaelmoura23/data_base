INSERT INTO Carro (ano, modelo, id_carro, placa, tipo, disponibilidade)
VALUES
(2019, 'Fiat Uno', 1, 'ABC1234', 'Sedan', 'Disponível'),
(2020, 'Volkswagen Gol', 2, 'DEF5678', 'Hatchback', 'Disponível'),
(2018, 'Ford Fiesta', 3, 'GHI9012', 'SUV', 'Disponível'),
(2017, 'Chevrolet Onix', 4, 'JKL3456', 'Sedan', 'Disponível'),
(2021, 'Toyota Corolla', 5, 'MNO7890', 'SUV', 'Disponível'),
(2016, 'Honda Civic', 6, 'PQR6789', 'Sedan', 'Disponível'),
(2019, 'Hyundai HB20', 7, 'STU1234', 'Hatchback', 'Disponível'),
(2017, 'Renault Kwid', 8, 'VWX5678', 'SUV', 'Disponível'),
(2018, 'Nissan March', 9, 'YZA9012', 'Hatchback', 'Disponível'),
(2022, 'BMW X1', 10, 'BCD3456', 'SUV', 'Disponível'),
(2015, 'Fiat Palio', 11, 'EFG6789', 'Hatchback', 'Disponível'),
(2020, 'Chevrolet Prisma', 12, 'HIJ1234', 'Sedan', 'Disponível'),
(2016, 'Volkswagen Voyage', 13, 'KLM5678', 'Sedan', 'Disponível'),
(2019, 'Ford EcoSport', 14, 'NOP9012', 'SUV', 'Disponível'),
(2017, 'Toyota Etios', 15, 'QRS3456', 'Hatchback', 'Disponível'),
(2018, 'Hyundai Creta', 16, 'TUV6789', 'SUV', 'Disponível'),
(2021, 'Renault Sandero', 17, 'WXY1234', 'Hatchback', 'Disponível'),
(2015, 'Honda Fit', 18, 'ZAB5678', 'Hatchback', 'Disponível'),
(2020, 'Chevrolet Tracker', 19, 'CDE9012', 'SUV', 'Disponível'),
(2016, 'Nissan Versa', 20, 'FGH3456', 'Sedan', 'Disponível');

INSERT INTO Pagamento (status_pagamento, forma_pagamento, valor, data_pagamento, id_comprovante, comprovante)
VALUES
('Pago', 'Cartão de Crédito', 1500.00, '2024-04-01', 1, 'ABC123'),
('Pendente', 'Transferência Bancária', 1200.00, '2024-04-02', 2, 'DEF456'),
('Pago', 'Dinheiro', 800.00, '2024-04-03', 3, 'GHI789'),
('Pago', 'Boleto Bancário', 2000.00, '2024-04-04', 4, 'JKL012'),
('Pago', 'Cartão de Débito', 1000.00, '2024-04-05', 5, 'MNO345'),
('Pendente', 'Cartão de Crédito', 1800.00, '2024-04-06', 6, 'ABCDEF'),
('Pago', 'Boleto Bancário', 1700.00, '2024-04-07', 7, 'GHIJKL'),
('Pago', 'Dinheiro', 2100.00, '2024-04-08', 8, 'MNOPQR'),
('Pendente', 'Transferência Bancária', 1900.00, '2024-04-09', 9, 'STUVWX'),
('Pago', 'Cartão de Débito', 2000.00, '2024-04-10', 10, 'YZABCD'),
('Pendente', 'Dinheiro', 2200.00, '2024-04-11', 11, 'EFGHIJ'),
('Pago', 'Boleto Bancário', 2400.00, '2024-04-12', 12, 'KLMNOP'),
('Pendente', 'Cartão de Crédito', 2500.00, '2024-04-13', 13, 'QRSTUV'),
('Pago', 'Transferência Bancária', 2600.00, '2024-04-14', 14, 'WXYZ01'),
('Pago', 'Dinheiro', 2700.00, '2024-04-15', 15, '234567'),
('Pendente', 'Cartão de Débito', 2800.00, '2024-04-16', 16, '89ABCD'),
('Pago', 'Boleto Bancário', 2900.00, '2024-04-17', 17, 'EFGHIJ'),
('Pago', 'Transferência Bancária', 3000.00, '2024-04-18', 18, 'KLMNOP'),
('Pendente', 'Dinheiro', 3100.00, '2024-04-19', 19, 'QRSTUV'),
('Pago', 'Cartão de Crédito', 3200.00, '2024-04-20', 20, 'WXYZ01');

INSERT INTO Agencia (endereco, contato, numero_agencia, estado, cidade)
VALUES
('Av. X, 123', '1112345678', 1, 'SP', 'São Paulo'),
('Rua Y, 456', '2198765432', 2, 'RJ', 'Rio de Janeiro'),
('Av. Z, 789', ' 3123456789', 3, 'MG', 'Belo Horizonte'),
('Rua W, 1011', '5187654321', 4, 'RS', 'Porto Alegre'),
('Av. V, 1213', '7198765432', 5, 'BA', 'Salvador'),
('Av. L, 1415', '4198765432', 6, 'PR', 'Curitiba'),
('Rua M, 1617', '5198765432', 7, 'SC', 'Florianópolis'),
('Av. N, 1819', '6198765432', 8, 'ES', 'Vitória'),
('Rua O, 2021', '7198765432', 9, 'PE', 'Recife'),
('Av. P, 2223', '8198765432', 10, 'CE', 'Fortaleza'),
('Rua Q, 2425', '9198765432', 11, 'PA', 'Belém'),
('Av. R, 2627', '1019876543', 12, 'AM', 'Manaus'),
('Rua S, 2829', '1119876543', 13, 'AC', 'Rio Branco'),
('Av. T, 3031', '1219876543', 14, 'RR', 'Boa Vista'),
('Rua U, 3233', '1319876543', 15, 'AP', 'Macapá'),
('Av. V, 3435', '1419876543', 16, 'TO', 'Palmas'),
('Rua W, 3637', '1519876543', 17, 'RO', 'Porto Velho'),
('Av. X, 3839', '1619876543', 18, 'MT', 'Cuiabá'),
('Rua Y, 4041', '1719876543', 19, 'MS', 'Campo Grande'),
('Av. Z, 4243', '1819876543', 20, 'GO', 'Goiânia');

INSERT INTO Cargo (nome_cargo, turno, id_funcionario)
VALUES
('Gerente', 'D', 1),
('Atendente', 'D', 2),
('Atendente', 'N', 3),
('Supervisor', 'D', 4),
('Atendente', 'N', 5),
('Atendente', 'N', 6),
('Atendente', 'D', 7),
('Gerente', 'D', 8),
('Atendente', 'D', 9),
('Supervisor', 'N', 10),
('Atendente', 'D', 11),
('Gerente', 'D', 12),
('Atendente', 'N', 13),
('Atendente', 'D', 14),
('Gerente', 'N', 15),
('Atendente', 'D', 16),
('Supervisor', 'D', 17),
('Atendente', 'D', 18),
('Atendente', 'N', 19),
('Atendente', 'D', 20);

INSERT INTO Funcionario (contato, data_contratacao, id_funcionario, nome, sobrenome)
VALUES
('+55 11 1234-5678', '2020-01-15', 1, 'Carlos', 'Silva'),
('+55 21 9876-5432', '2021-03-20', 2, 'Ana', 'Oliveira'),
('+55 31 2345-6789', '2019-05-10', 3, 'Rafael', 'Santos'),
('+55 51 8765-4321', '2018-09-05', 4, 'Mariana', 'Pereira'),
('+55 71 9876-5432', '2022-02-12', 5, 'Paulo', 'Rodrigues'),
('+55 41 91234-5678', '2017-01-15', 6, 'Fernanda', 'Silva'),
('+55 48 92345-6789', '2018-03-20', 7, 'Rodrigo', 'Oliveira'),
('+55 27 93456-7890', '2019-05-10', 8, 'Camila', 'Santos'),
('+55 81 94567-8901', '2020-09-05', 9, 'Pedro', 'Pereira'),
('+55 85 95678-9012', '2021-02-12', 10, 'Juliana', 'Rodrigues'),
('+55 91 96789-0123', '2016-04-15', 11, 'Lucas', 'Almeida'),
('+55 92 97890-1234', '2017-07-20', 12, 'Mariana', 'Costa'),
('+55 63 98901-2345', '2018-09-30', 13, 'Gustavo', 'Nunes'),
('+55 65 99012-3456', '2019-12-01', 14, 'Laura', 'Lima'),
('+55 66 90123-4567', '2020-10-15', 15, 'Felipe', 'Martins'),
('+55 67 91234-5678', '2021-11-20', 16, 'Carolina', 'Barbosa'),
('+55 68 92345-6789', '2016-05-25', 17, 'Daniel', 'Ferreira'),
('+55 69 93456-7890', '2017-08-30', 18, 'Isabela', 'Gomes'),
('+55 77 94567-8901', '2018-10-05', 19, 'Ricardo', 'Sousa'),
('+55 78 95678-9012', '2019-01-10', 20, 'Márcia', 'Oliveira');

INSERT INTO Clientes (nome, sobrenome, endereco, id_cliente, cidade, celular, estado, email)
VALUES
('João', 'Silva', 'Rua A, 123', 1, 'São Paulo', '+55 11 91234-5678', 'SP', 'joao@example.com'),
('Maria', 'Santos', 'Av. B, 456', 2, 'Rio de Janeiro', '+55 21 98765-4321', 'RJ', 'maria@example.com'),
('Pedro', 'Oliveira', 'Rua C, 789', 3, 'Belo Horizonte', '+55 31 92345-6789', 'MG', 'pedro@example.com'),
('Ana', 'Pereira', 'Av. D, 1011', 4, 'Porto Alegre', '+55 51 87654-3210', 'RS', 'ana@example.com'),
('Lucas', 'Rodrigues', 'Rua E, 1213', 5, 'Salvador', '+55 71 93456-7890', 'BA', 'lucas@example.com'),
('Carlos', 'Gonçalves', 'Av. G, 1234', 6, 'Curitiba', '+55 41 90123-4567', 'PR', 'carlos@example.com'),
('Isabela', 'Almeida', 'Rua H, 5678', 7, 'Florianópolis', '+55 48 91234-5678', 'SC', 'isabela@example.com'),
('Ricardo', 'Costa', 'Av. I, 9101', 8, 'Vitória', '+55 27 92345-6789', 'ES', 'ricardo@example.com'),
('Márcia', 'Martins', 'Rua J, 1112', 9, 'Recife', '+55 81 93456-7890', 'PE', 'marcia@example.com'),
('Gabriel', 'Ferreira', 'Av. K, 1314', 10, 'Fortaleza', '+55 85 94567-8901', 'CE', 'gabriel@example.com'),
('Juliana', 'Gomes', 'Rua L, 1516', 11, 'Belém', '+55 91 95678-9012', 'PA', 'juliana@example.com'),
('Luana', 'Sousa', 'Av. M, 1718', 12, 'Manaus', '+55 92 96789-0123', 'AM', 'luana@example.com'),
('Bruno', 'Oliveira', 'Rua N, 1920', 13, 'Rio Branco', '+55 68 97890-1234', 'AC', 'bruno@example.com'),
('Aline', 'Silva', 'Av. O, 2122', 14, 'Boa Vista', '+55 95 98901-2345', 'RR', 'aline@example.com'),
('Fernando', 'Pereira', 'Rua P, 2223', 15, 'Macapá', '+55 96 99012-3456', 'AP', 'fernando@example.com'),
('Amanda', 'Rodrigues', 'Av. Q, 2324', 16, 'Palmas', '+55 63 90123-4567', 'TO', 'amanda@example.com'),
('José', 'Almeida', 'Rua R, 2526', 17, 'Porto Velho', '+55 69 91234-5678', 'RO', 'jose@example.com'),
('Bruna', 'Costa', 'Av. S, 2728', 18, 'Cuiabá', '+55 65 92345-6789', 'MT', 'bruna@example.com'),
('Felipe', 'Martins', 'Rua T, 2923', 19, 'Campo Grande', '+55 67 93456-7890', 'MS', 'felipe@example.com'),
('Aline', 'Ferreira', 'Av. U, 3129', 20, 'Goiânia', '+55 62 94567-8901', 'GO', 'aline@example.com');

INSERT INTO Manutencao (custo, km, data_manutencao, tipo_manutencao, descricao)
VALUES
(100.00, '10000', '2024-04-01', 'Troca de óleo', 'Troca de óleo e filtro'),
(250.00, '20000', '2024-04-05', 'Reparo de freios', 'Substituição das pastilhas de freio'),
(500.00, '30000', '2024-04-10', 'Reparo do motor', 'Reparo do motor devido a superaquecimento'),
(150.00, '40000', '2024-04-15', 'Balanceamento e alinhamento', 'Balanceamento e alinhamento das rodas'),
(300.00, '50000', '2024-04-20', 'Troca de correia dentada', 'Substituição da correia dentada'),
(200.00, '60000', '2024-04-25', 'Reparo da transmissão', 'Reparo da transmissão devido a desgaste'),
(180.00, '70000', '2024-04-30', 'Troca de amortecedores', 'Troca dos amortecedores dianteiros e traseiros'),
(350.00, '80000', '2024-05-05', 'Reparo do sistema elétrico', 'Reparo do sistema elétrico devido a falhas'),
(120.00, '90000', '2024-05-10', 'Troca de pneus', 'Troca dos pneus dianteiros e traseiros'),
(400.00, '100000', '2024-05-15', 'Revisão completa', 'Revisão completa do veículo'),
(250.00, '110000', '2024-05-20', 'Reparo do sistema de ar condicionado', 'Reparo do sistema de ar condicionado devido a vazamentos'),
(300.00, '120000', '2024-05-25', 'Troca de bateria', 'Troca da bateria devido a falha'),
(280.00, '130000', '2024-05-30', 'Reparo do sistema de direção', 'Reparo do sistema de direção devido a ruídos'),
(150.00, '140000', '2024-06-05', 'Troca de filtro de ar', 'Troca do filtro de ar devido a entupimento'),
(220.00, '150000', '2024-06-10', 'Reparo do sistema de freios', 'Reparo do sistema de freios devido a falha'),
(180.00, '160000', '2024-06-15', 'Troca de velas', 'Troca das velas de ignição'),
(380.00, '170000', '2024-06-20', 'Reparo da suspensão', 'Reparo da suspensão devido a barulhos'),
(200.00, '180000', '2024-06-25', 'Troca de óleo', 'Troca de óleo e filtro'),
(350.00, '190000', '2024-06-30', 'Reparo do sistema de injeção', 'Reparo do sistema de injeção devido a falhas'),
(300.00, '200000', '2024-07-05', 'Balanceamento e alinhamento', 'Balanceamento e alinhamento das rodas');


INSERT INTO Feedback (data_feedback, comentario, avaliacao)
VALUES
('2024-04-02', 'Excelente serviço, funcionários muito prestativos.', 4.5),
('2024-04-07', 'Atendimento rápido e eficiente.', 4.0),
('2024-04-12', 'Houve atraso na entrega do serviço.', 3.0),
('2024-04-17', 'Qualidade do serviço deixou a desejar.', 2.5),
('2024-04-22', 'Preço justo e serviço bem executado.', 4.8),
('2024-04-27', 'Serviço rápido e eficaz.', 4.2),
('2024-05-02', 'Atendimento cordial e prestativo.', 4.3),
('2024-05-07', 'Qualidade do serviço excelente.', 4.8),
('2024-05-12', 'Preço um pouco elevado, mas serviço de qualidade.', 4.0),
('2024-05-17', 'Tempo de espera um pouco longo.', 3.5),
('2024-05-22', 'Reparo bem feito, mas custo um pouco alto.', 3.8),
('2024-05-27', 'Atendimento deixou a desejar.', 2.0),
('2024-06-01', 'Serviço mal executado, tive que retornar para correção.', 2.5),
('2024-06-06', 'Demora na entrega do serviço.', 2.8),
('2024-06-11', 'Profissionais despreparados.', 1.5),
('2024-06-16', 'Insatisfeito com o serviço prestado.', 1.0),
('2024-06-21', 'Falta de transparência nos custos.', 3.0),
('2024-06-26', 'Esperava mais qualidade.', 3.2),
('2024-07-01', 'Não recomendo.', 2.0),
('2024-07-06', 'Serviço não condizente com o valor cobrado.', 2.3);

INSERT INTO Locacao (data_locacao, data_devolucao, valor_total, id_carro, id_cliente)
VALUES
('2024-04-20', '2024-04-25', 500.00, 1, 2),
('2024-04-15', '2024-04-22', 720.00, 3, 1),
('2024-04-10', '2024-04-18', 380.00, 2, 3),
('2024-04-05', '2024-04-12', 450.00, 1, 4),
('2024-03-30', '2024-04-07', 610.00, 3, 2),
('2024-07-10', '2024-07-15', 600.00, 2, 4),
('2024-07-15', '2024-07-22', 800.00, 1, 5),
('2024-07-20', '2024-07-27', 700.00, 3, 2),
('2024-07-25', '2024-08-01', 750.00, 4, 1),
('2024-07-30', '2024-08-06', 900.00, 5, 3),
('2024-08-05', '2024-08-12', 720.00, 1, 4),
('2024-08-10', '2024-08-17', 680.00, 3, 5),
('2024-08-15', '2024-08-22', 850.00, 2, 2),
('2024-08-20', '2024-08-27', 700.00, 4, 1),
('2024-08-25', '2024-09-01', 780.00, 5, 3),
('2024-08-30', '2024-09-06', 720.00, 1, 4),
('2024-09-05', '2024-09-12', 680.00, 3, 5),
('2024-09-10', '2024-09-17', 850.00, 2, 2),
('2024-09-15', '2024-09-22', 700.00, 4, 1),
('2024-09-20', '2024-09-27', 780.00, 5, 3);


INSERT INTO Verifica
VALUES 
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105),
(6, 106),
(7, 107),
(8, 108),
(9, 109),
(10, 110),
(11, 111),
(12, 112),
(13, 113),
(14, 114),
(15, 115),
(16, 116),
(17, 117),
(18, 118),
(19, 119),
(20, 120);


INSERT INTO Recebe (id_manutencao, id_carro)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);


INSERT INTO Envia (observacao, id_feedback, id_cliente)
VALUES 
('Ótimo serviço!', 1, 1),
('Precisa melhorar o atendimento.', 2, 2),
('Rápido e eficiente.', 3, 3),
('Profissionais muito competentes.', 4, 4),
('Satisfeito com o resultado.', 5, 5),
('Serviço excelente!', 6, 6),
('Atendimento cordial e rápido.', 7, 7),
('Muito satisfeito com o serviço prestado.', 8, 8),
('Recomendo a todos.', 9, 9),
('Voltarei com certeza!', 10, 10),
('Equipe muito competente.', 11, 11),
('Ótimo custo-benefício.', 12, 12),
('Superou minhas expectativas.', 13, 13),
('Profissionais altamente qualificados.', 14, 14),
('Serviço impecável.', 15, 15),
('Atendimento personalizado.', 16, 16),
('Melhor serviço da região.', 17, 17),
('Entrega rápida e eficiente.', 18, 18),
('Preço justo.', 19, 19),
('Totalmente satisfeito.', 20, 20);


-- Seleção da tabela Carro
SELECT * FROM Carro; -- ok

-- Seleção da tabela Clientes
SELECT * FROM Clientes; -- ok

-- Seleção da tabela Cargo
SELECT * FROM Cargo; -- ok

-- Seleção da tabela Funcionario
SELECT * FROM Funcionario; -- ok

-- Seleção da tabela Agencia
SELECT * FROM Agencia; -- ok

-- Seleção da tabela Pagamento
SELECT * FROM Pagamento; -- ok

-- Seleção da tabela Manutencao
SELECT * FROM Manutencao; -- ok

-- Seleção da tabela Feedback
SELECT * FROM Feedback; -- ok

-- Seleção da tabela Locacao
SELECT * FROM Locacao; -- ok

-- Seleção da tabela Verifica
SELECT * FROM Verifica; --  ok

-- Seleção da tabela Recebe
SELECT * FROM Recebe; -- ok

-- Seleção da tabela Envia
SELECT * FROM Envia; -- 
-- Seleção da tabela Carro
SELECT * FROM Carro; -- ok

-- Seleção da tabela Clientes
SELECT * FROM Clientes; -- ok

-- Seleção da tabela Cargo
SELECT * FROM Cargo; -- ok

-- Seleção da tabela Funcionario
SELECT * FROM Funcionario; -- ok

-- Seleção da tabela Agencia
SELECT * FROM Agencia; -- ok

-- Seleção da tabela Pagamento
SELECT * FROM Pagamento; -- ok

-- Seleção da tabela Manutencao
SELECT * FROM Manutencao; -- ok

-- Seleção da tabela Feedback
SELECT * FROM Feedback; -- ok

-- Seleção da tabela Locacao
SELECT * FROM Locacao; -- ok

-- Seleção da tabela Verifica
SELECT * FROM Verifica; --  ok

-- Seleção da tabela Recebe
SELECT * FROM Recebe; -- ok

-- Seleção da tabela Envia
SELECT * FROM Envia; -- 