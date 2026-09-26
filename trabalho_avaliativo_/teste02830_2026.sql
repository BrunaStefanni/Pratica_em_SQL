/* Grupo II */

CREATE DATABASE teste02830_2026; 
USE teste02830_2026;
/* anterirormente criei DATABASE empresa_ai4, posteriormente fiz drop e mudei */

CREATE TABLE tipo_funcionario (
cod_tipo_funcionario INT PRIMARY KEY,
descricao VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario (
num_funcionario INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
morada VARCHAR(200),
codigo_postal VARCHAR(10),
localidade VARCHAR(100),
telefone VARCHAR(20),
data_nascimento DATE,
salario DECIMAL(10,2),
cod_tipo_funcionario INT,

FOREIGN KEY (cod_tipo_funcionario) REFERENCES tipo_funcionario(cod_tipo_funcionario)
);

CREATE TABLE referencia_peca (
referencia VARCHAR(100) PRIMARY KEY,
designacao VARCHAR(100) NOT NULL,
preco DECIMAL(10,2),
duracao_dias INT
);

CREATE TABLE cliente (
num_cliente INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
morada VARCHAR(200),
codigo_postal VARCHAR(10),
localidade VARCHAR(100),
nif VARCHAR(20)
);

CREATE TABLE estado_documento (
cod_estado_documento INT PRIMARY KEY,
descricao VARCHAR(100) NOT NULL
);

CREATE TABLE documento (
num_documento INT PRIMARY KEY,
cliente INT,
data_documento DATE,
estado_documento INT,

FOREIGN KEY (cliente) REFERENCES cliente(num_cliente),
FOREIGN KEY (estado_documento) REFERENCES estado_documento(cod_estado_documento)
);

CREATE TABLE ordem_fabrico (
num_ordem VARCHAR(100) PRIMARY KEY,
num_documento INT,
num_funcionario INT,
data_inicio DATE,
data_fim DATE,

FOREIGN KEY (num_documento) REFERENCES documento(num_documento),
FOREIGN KEY (num_funcionario) REFERENCES funcionario(num_funcionario)
);

CREATE TABLE documento_aux (
num_ordem VARCHAR(50),
referencia VARCHAR(50),
quantidade INT NOT NULL,

PRIMARY KEY (num_ordem, referencia), 
FOREIGN KEY (num_ordem) REFERENCES ordem_fabrico(num_ordem), 
FOREIGN KEY (referencia) REFERENCES referencia_peca(referencia)
);


/* Perguntas a serem respondidas:

A. Quais os nomes dos funcionários registados no sistema? */
SELECT nome
FROM funcionario;

/*B. Quais as referências/peças/quantidades da Ordem de Fabrico (OF) OF001/2018? */
SELECT da.referencia, rp.designacao, da.quantidade
FROM documento_aux da
INNER JOIN referencia_peca rp
ON da.referencia = rp.referencia
WHERE da.num_ordem = 'OF001/2018';

/*C. Para cada OF, mostre o total de peças a produzir. */
SELECT num_ordem, SUM(quantidade) AS total_pecas
FROM documento_aux
GROUP BY num_ordem;

/* D. Qual o nome do cliente do documento de venda com o estado ‘Aceite’ para
venda de referências ‘Selo GPS 5G light Tracking’, com responsável na produção a
ganhar mensalmente menos de 700 EUR.*/
SELECT DISTINCT c.nome
FROM cliente c
INNER JOIN documento d
ON c.num_cliente = d.cliente
INNER JOIN estado_documento ed
ON d.estado_documento = ed.cod_estado_documento
INNER JOIN ordem_fabrico ofa
ON d.num_documento = ofa.num_documento
INNER JOIN funcionario f
ON ofa.num_funcionario = f.num_funcionario
INNER JOIN documento_aux da
ON ofa.num_ordem = da.num_ordem
INNER JOIN referencia_peca rp
ON da.referencia = rp.referencia
WHERE ed.descricao = 'Aceite'
AND rp.designacao LIKE 'Selo GPS 5G light Tracking%' /* % = qualquer coisa após o texto*/
AND f.salario < 700;

/*E. Para cada cliente, mostre o total pago de documentos de venda.
Considerar apenas os documentos com o estado ‘Aceite’.
*/
SELECT c.num_cliente, c.nome, SUM(rp.preco * da.quantidade) AS total_pago
FROM cliente c
INNER JOIN documento d
ON c.num_cliente = d.cliente
INNER JOIN estado_documento ed
ON d.estado_documento = ed.cod_estado_documento
INNER JOIN ordem_fabrico ofa
ON d.num_documento = ofa.num_documento
INNER JOIN documento_aux da
ON ofa.num_ordem = da.num_ordem
INNER JOIN referencia_peca rp
ON da.referencia = rp.referencia
WHERE ed.descricao = 'Aceite'
GROUP BY c.num_cliente, c.nome;

