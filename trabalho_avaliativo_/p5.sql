/*Grupo III - Questão 5:
Altere o modelo para que seja possível acrescentar a gestão do controlo de
expedição, isto é, registar informação no término de uma ordem de fabrico. 

Neste sentido, o controlo de expedição é feito por um funcionário, após a conclusão de
uma determinada ordem de fabrico e a expedição é feita através de um único ato.

Desta forma, não é necessário garantir um controlo de expedição para cada peça/
referência de uma ordem de fabrico, mas sim UM ÚNICO CONTROLO para toda a ordem de fabrico. 

Dadas as exigências deste tipo de Indústria, é necessário registar a data e hora em que 
a mesma foi feita, assim como o resultado (Aprovado / Não Aprovado). 

Caso o controlo de expedição tenha um resultado negativo (Não Aprovado), deve ser gerada uma nova ordem de fabrico automaticamente,
exatamente igual à anterior já que todas as peças/referências produzidas são destruídas no imediato (apenas no resultado negativo).
 */
 
USE teste02830_2026;

-- -----------------------------------------
-- OBS: Formador, nessa questão eu entendi que deveria ser criado uma nova tabela para o controle de expedição, 
-- depois disso não compreendi o restante da questão. mesmo pedindo ajuda ao chatgpt, preferi não responder.

-- -----------------------------------------
CREATE TABLE controlo_expedicao(
id_controlo INT AUTO_INCREMENT PRIMARY KEY,
num_ordem VARCHAR(100) NOT NULL,
num_funcionario INT NOT NULL,
data_hora DATETIME NOT NULL,
resultado ENUM('Aprovado', 'Não Aprovado') NOT NULL,

UNIQUE (num_ordem),

FOREIGN KEY (num_ordem) REFERENCES ordem_fabrico(num_ordem),
FOREIGN KEY (num_funcionario) REFERENCES funcionario(num_funcionario)
);


CREATE TRIGGER /*ainda não compreendi esses conceitos*/
