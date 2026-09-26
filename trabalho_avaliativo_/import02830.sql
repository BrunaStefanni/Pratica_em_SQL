/*Grupo III */
USE teste02830_2026;

/* Inserindo dados */
INSERT INTO tipo_funcionario (cod_tipo_funcionario, descricao) 
VALUES
(1, 'Operador'),
(2, 'Administrador');

INSERT INTO funcionario (num_funcionario, nome, morada, codigo_postal, localidade, telefone, data_nascimento, salario, cod_tipo_funcionario)
VALUES
(101, 'Manuel Silva da Costa', 'Apartado 5432', '3100-123', 'Pombal', '236987123', '1983-11-06', 1112.50, 2),
(102, 'Antoinne Villanova Teixeira', 'Praceta da Rainha Dona Leonor lote nº25', '2480-567', 'Porto de Mós', '244435645', '1989-03-15', 763.06, 1),
(103, 'Ana Sofia Giao Simões', 'Rua da Marinha nº30', '2400-567', 'Leiria', '244765226', '1980-04-05', 944.71, 1),
(104, 'João António Cabeças', 'Largo do Rio Seco nº8 1º Esq', '2430-789', 'Marinha Grande', '244987663', '1944-06-19', 611.34, 1),
(105, 'Sonia Isabel Martins Toledo', 'Rua de Baixo nº1', '2400-987', 'Leiria', '244765632', '2000-01-31', 870.24, 1),
(106, 'Filipe Sofio Jacinto', 'Monte do Fundo do Saco EN 109', '2400-005', 'Leiria', '244762549', '1974-12-24', 731.00, 1),
(107, 'Maria Duarte Cravo', 'Largo Cova da Banha nº16', '2450-543', 'Nazaré', '262631348', '1991-09-27', 1270.32, 1),
(108, 'Pedro Antão das Neves', 'Quinta California EN 242', '2400-651', 'Leiria', '244631348', '2001-05-01', 931.90, 1);

INSERT INTO referencia_peca (referencia, designacao, preco, duracao_dias)
VALUES
('STG001', 'Selo GPS 5G light Tracking (6 meses)', 15.25, 30),
('STG002', 'Selo GPS 5G light Tracking (24 meses)', 29.90, 45),
('STG003', 'Selo GPS lifetime Tracking', 49.90, 90);

INSERT INTO estado_documento (cod_estado_documento, descricao)
VALUES
(1, 'Em análise'),
(2, 'Aceite'),
(3, 'Rejeitado');

INSERT INTO cliente (num_cliente, nome, morada, codigo_postal, localidade, nif)
VALUES
(1, 'Soc Agricola Encosta Lis Lda', 'Herdade do Lis', '2440-901', 'Batalha', '500120000'),
(2, 'Monte da Penha', 'Monte da Penha', '2460-498', 'Alcobaça', '500120123'),
(3, 'Herdade de Ourém', 'Herdade de Ourém Apt.1', '2490-999', 'Ourém', '500120444'),
(4, 'Adega Cooperativa Ansião', 'Bairro Industrial', '3240-305', 'Ansião', '544231123'),
(5, 'Monte do Zêzere', 'Monte do Zêzere', '3270-121', 'Pedrógão Grande', '566444111'),
(6, 'Terras de Figueiró', 'Rua Cerrado Feira Lote22', '3260-102', 'Figueiró dos Vinhos', '544666222'),
(7, 'Kelman Wines', 'Rua Santo António', '2500-100', 'Caldas da Rainha', '577888987'),
(8, 'Fundação Região de Leiria', 'Estrada do Lis', '2400-769', 'Leiria', '513912572'),
(999, 'Leiria Industria 4.0', 'Parque Industrial de Leiria Lote 99', '2400-999', 'Leiria', '999999999');

INSERT INTO documento (num_documento, cliente, data_documento, estado_documento)
VALUES
(1, 1, '2018-01-05', 2),
(2, 3, '2018-01-05', 1),
(3, 8, '2018-01-06', 3),
(4, 7, '2018-01-07', 3),
(5, 6, '2018-01-08', 2),
(6, 8, '2018-01-08', 1),
(7, 6, '2018-01-09', 2),
(8, 5, '2018-01-09', 3),
(9, 5, '2018-01-10', 2),
(10, 2, '2018-01-10', 2),
(11, 4, '2018-01-11', 3),
(12, 2, '2018-01-11', 1),
(13, 1, '2018-01-12', 1),
(14, 1, '2018-01-12', 2),
(15, 8, '2018-01-13', 3),
(16, 6, '2018-01-13', 2),
(17, 4, '2018-01-14', 1),
(18, 3, '2018-01-14', 3),
(19, 7, '2018-01-15', 3),
(20, 7, '2018-01-15', 2);

INSERT INTO ordem_fabrico (num_ordem, num_documento, num_funcionario, data_inicio, data_fim)
VALUES
('OF001/2018', 1, 101, '2018-01-05', '2018-02-19'),
('OF002/2018', 5, 105, '2018-01-08', '2018-04-08'),
('OF003/2018', 7, 104, '2018-01-09', '2018-02-08'),
('OF004/2018', 9, 103, '2018-01-10', '2018-04-10'),
('OF005/2018', 10, 108, '2018-01-10', '2018-02-24'),
('OF006/2018', 14, 102, '2018-01-12', '2018-02-26'),
('OF007/2018', 16, 107, '2018-01-13', '2018-02-27'),
('OF008/2018', 20, 106, '2018-01-15', '2018-02-14');

INSERT INTO documento_aux (num_ordem, referencia, quantidade)
VALUES
('OF001/2018', 'STG001', 16),
('OF001/2018', 'STG002', 5),
('OF002/2018', 'STG003', 23),
('OF003/2018', 'STG001', 31),
('OF004/2018', 'STG002', 2),
('OF004/2018', 'STG003', 4),
('OF005/2018', 'STG003', 47),
('OF006/2018', 'STG002', 19),
('OF007/2018', 'STG001', 49),
('OF007/2018', 'STG002', 78),
('OF008/2018', 'STG003', 65);

SELECT * FROM tipo_funcionario;
SELECT * FROM funcionario;