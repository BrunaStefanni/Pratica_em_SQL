/*Grupo III - Questão 3:
Sabendo que em 2026 o salário mínimo nacional está fixado nos 800 EUR faça
todos os procedimentos necessários para que essa alteração seja feita via SQL.
Construa um ficheiro com o nome p3.sql com o comando para essa mesma
alteração.
 */
 
USE teste02830_2026; /*UPDATE SALÁRIOS*/

UPDATE funcionario
SET salario = 800.00
WHERE salario < 800.00
AND num_funcionario > 0;

/* Obs: onde o salário é menor que 800, ele vai igualar 
para 800, abaixo está a consulta de conferência */

SELECT num_funcionario, nome, salario
FROM funcionario
ORDER BY salario;