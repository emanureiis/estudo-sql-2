USE vendas_sucos;

/* Criando tabela de vendas */
CREATE TABLE TABELA_DE_VENDAS
(NUMERO VARCHAR(5) NOT NULL,
DATA_DE_VENDA DATE NULL,
CPF VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPOSTO FLOAT NULL,
PRIMARY KEY (NUMERO));

/* Ligação entre a tabela de vendas e tabela de clientes pelo CPF (FOREIGN KEY)*/
ALTER TABLE TABELA_DE_VENDAS
ADD CONSTRAINT FK_CLIENTES /* Estou dizendo que vou alterar a tabela de vendas adicioando um novo relacionamento com o nome de FK_CLIENTES */
FOREIGN KEY (CPF) /* Escolho qual vai ser a minha chave estrangeira*/
REFERENCES CLIENTES (CPF);

ALTER TABLE tabela_de_vendas
ADD CONSTRAINT FK_VENDEDORES
FOREIGN KEY (MATRICULA)
REFERENCES vendedores (MATRICULA);
