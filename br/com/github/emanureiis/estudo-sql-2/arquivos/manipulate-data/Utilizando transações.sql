/* ----------------------------------------------------------------------------------------
	Transações nos dão mais segurança caso façamos operações não desejadas.
	Em resumo, consiste na criação (abertura) de uma transação antes de uma
    manipulação para que estas, ao invés de serem gravadas no banco de dados,
    fiquem guardadas em memória até que eu finalize a transação criada, seja
    através de um COMMIT como também um ROLLBACK. Podemos, inclusive, fazer uma
    analogia com o git add *, visto que quando executamos esse comando, as alterações
    ficam "penduradas" aguardando um git push.
------------------------------------------------------------------------------------------*/

USE vendas_sucos;

/* Iniciando a transação */
START TRANSACTION;

/* Manipulação */
UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;

/* Finalizando a transação com a efetivação
da manipulação */
COMMIT;

/* Finalizando a transação sem a efetivação
da manipulção - nada acontece no banco */
ROLLBACK;
