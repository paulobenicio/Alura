/* 
Excluindo registros 
Atenção, DROP utilizado para tabelas e DELETE para registros
*/

USE sucos;

DELETE FROM tbproduto WHERE PRODUTO = '1078680';

DELETE FROM tabela_de_vendedores WHERE MATRICULA = '00233';

SELECT * FROM tbproduto;

SELECT * FROM tabela_de_vendedores;