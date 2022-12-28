/* ----------------------------------------------------------------------------------------------
	Neste aquivo é possível aprender como inserir dados baseado em uma consulta que
	estamos fazendo, seja no mesmo banco ou em um banco diferente comos nos exemplos abaixo
----------------------------------------------------------------------------------------------
	Lembrando que o processo inserçção pode ser realizado também pelo Form Editor
---------------------------------------------------------------------------------------------- */

USE vendas_sucos;
/* Selecionando tudo de um banco de dados externo */
SELECT * FROM sucos_vendas.tabela_de_produtos;

/* Insere em vendas_sucos apenas produtos que ainda não formam inseridos */
INSERT INTO produtos (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA) 
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR,
TAMANHO, SABOR, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos);

/* Assim também funciona, desde que a ordem dos campos inseridos seja a mesma dos campos da tabela*/
/* INSERT INTO produtos 
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR,
TAMANHO, SABOR, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos); */






 

