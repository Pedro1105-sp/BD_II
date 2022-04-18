# ATIVIDADE 4

# CRIAÇÃO DE BANCO DE DADOS:
CREATE DATABASE sistema_e_pedidos2;

# SELECIONA (HABILITAR - ATIVAR) O BANCO DE DADOS: 
USE sistema_e_pedidos2;

# CRIAÇÃO DAS TABELAS:

# CRIAÇÃO DA TABELA tbl_produto:

CREATE TABLE tbl_produto( 

	cod_produto INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,           #UNSIGNED - SEM SINAL  ;  INT - INTEIRO  ;  AUTO_INCREMENT - INDICE NÚMERICO  ; PRIMARY KEY - CHAVE PRIMARIA
	nome_produto VARCHAR(100) NOT NULL,								   #VARCHAR - TIPO DE DADO - E A QUANTIDADE DE CARACTERES  ;  NOT NULL - NÃO PODE SER NULO "0"
    desc_produto TEXT NOT NULL,								  		   #TEXT - TEXTO   ; NOT NULL - NÃO PODE SER NULO "0"
    valor DECIMAL(10,2)

);


# CRIAÇÃO DA TABELA tbl_itempedido:

CREATE TABLE tbl_itempedido(
	
    qtd INT(10) UNSIGNED NOT NULL,									  #UNSIGNED - SEM SINAL ;  NOT NULL - NÃO PODE SER NULO "0"  ; INT - INTEIRO
	cod_produto INT(10) UNSIGNED NOT NULL,							  #UNSIGNED - SEM SINAL ;  NOT NULL - NÃO PODE SER NULO "0"  ; INT - INTEIRO
    cod_pedido INT(10) UNSIGNED NOT NULL							  #UNSIGNED - SEM SINAL ;  NOT NULL - NÃO PODE SER NULO "0"  ; INT - INTEIRO

);


# CRIAÇÃO DA TABELA tbl_pedido:

CREATE TABLE tbl_pedido(

	cod_ped INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,    	#UNSIGNED - SEM SINAL  ;  INT - INTEIRO  ;  AUTO_INCREMENT - INDICE NÚMERICO  ; PRIMARY KEY - CHAVE PRIMARIA
    cod_cliente INT(10) UNSIGNED NOT NULL,						#UNSIGNED - SEM SINAL ;  NOT NULL - NÃO PODE SER NULO "0"  ; INT - INTEIRO
    data_pedido DATETIME NOT NULL,  						    #DATETIME - DATA  ;  NOT NULL - NÃO PODE SER NULO "0"
    data_entrega DATETIME NOT NULL								#DATETIME - DATA   ; NOT NULL - NÃO PODE SER NULO "0"

);

# CRIAÇÃO DA TABELA tbl_cliente:

CREATE TABLE tbl_cliente(

	cod_cliente INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,	#UNSIGNED - SEM SINAL  ;  INT - INTEIRO  ;  AUTO_INCREMENT - INDICE NÚMERICO  ; PRIMARY KEY - CHAVE PRIMARIA
	nome_cliente VARCHAR(45) NOT NULL						    #VARCHAR - TIPO DE DADO - E A QUANTIDADE DE CARACTERES  ;  NOT NULL - NÃO PODE SER NULO "0"

);

# CRIAÇÃO DE CHAVES ESTRANGEIRAS:

 # CRIAÇÃO DA FK_PRODUTO NA TABELA tbl_itempedido

ALTER TABLE tbl_itempedido ADD CONSTRAINT FK_PRODUTO	      #ALTER - ALTERAÇÃO DE UMA TABELA   ; ADD CONTRANT - ADIÇÃO  ; FK_MEDICO_ESPECIALIDADE - NOME DA FK
FOREIGN KEY (cod_produto)									  #FOREIGN KEY "FK" - CHAVE ESTRANGEIRA
REFERENCES tbl_produto (cod_produto);						  #REFERENCES - REFERENCIA DE OUTRA TABELA

 # CRIAÇÃO DA FK_PEDIDO NA TABELA tbl_itempedido

ALTER TABLE tbl_itempedido ADD CONSTRAINT FK_PEDIDO 	      #ALTER - ALTERAÇÃO DE UMA TABELA   ; ADD CONTRANT - ADIÇÃO  ; FK_MEDICO_ESPECIALIDADE - NOME DA FK
FOREIGN KEY (cod_pedido)									  #FOREIGN KEY "FK" - CHAVE ESTRANGEIRA
REFERENCES tbl_pedido (cod_ped);						      #REFERENCES - REFERENCIA DE OUTRA TABELA


 # CRIAÇÃO DA FK_CLIENTE NA TABELA tbl_pedido

ALTER TABLE tbl_pedido ADD CONSTRAINT FK_CLIENTE 	          #ALTER - ALTERAÇÃO DE UMA TABELA   ; ADD CONTRANT - ADIÇÃO  ; FK_MEDICO_ESPECIALIDADE - NOME DA FK
FOREIGN KEY (cod_cliente)									  #FOREIGN KEY "FK" - CHAVE ESTRANGEIRA
REFERENCES tbl_cliente (cod_cliente);						  #REFERENCES - REFERENCIA DE OUTRA TABELA



#INSERÇÃO DE DADOS NA TABELA tbl_produto:

INSERT INTO tbl_produto (nome_produto, desc_produto, valor)VALUES
('Smash burger', 'Pão, queijo, hamburguer caseiro, presunto e alface', 25.00),
('Bauru', 'Pão, queijo e presunto', 15.00),
('Sanduíche no pão de queijo de frigideira', 'Pão e queijo', 9.00),
('Sanduíche italiano de frios', 'Pão, alface, tomate, salame e azeitona', 28.00),
('Sanduíche de pernil com abacaxi', 'Pão, alface, pernil, tomate e abacaixi', 22.00),
('Sanduíche de frango empanado', 'Pão, frango, alface, tomate e maionesse', 22.00),
('Sanduíche vegetariano de guacamole', 'Pão, alface, tomate, maionesse e rucula', 30.00),
('Tapioca', 'Tapioca, mortadela, queijo e presunto', 18.00),
('Sanduíche de rosbife', 'Pão, queijo, alface, tomate e rosbife', 35.00),
('Sanduíche de carne louca', 'Pão, queijo, alface, tomate e coxão duro', 35.00);


#INSERÇÃO DE DADOS NA TABELA tbl_cliente:

INSERT INTO tbl_cliente (nome_cliente)VALUES
('Pedro Henrique'),
('Ana Paula'),
('Isabella'),
('Eloisa'),
('Luiz');


#INSERÇÃO DE DADOS NA TABELA tbl_pedido:

INSERT INTO tbl_pedido (data_pedido, data_entrega, cod_cliente)VALUES
('2021/11/28', '2021/11/28', 1),
('2021/11/28', '2021/11/28', 1),
('2021/11/28', '2021/11/28', 2),
('2021/11/28', '2021/11/28', 2),
('2021/11/28', '2021/11/28', 2),
('2021/11/29', '2021/11/29', 2),
('2021/11/29', '2021/11/29', 3),
('2021/11/29', '2021/11/29', 4),
('2021/11/29', '2021/11/29', 4),
('2021/11/29', '2021/11/29', 5);


INSERT INTO tbl_itempedido (qtd, cod_produto, cod_pedido)VALUES
(2, 4, 2),
(3, 8, 4),
(1, 10, 6),
(2, 1, 5),
(3, 7, 7),
(2, 9, 8);


# CONTAR
SELECT COUNT(*)AS 'TOTAL PRODUTOS' FROM tbl_produto;										# COUNT -> CONTA A QUANTIDADE DE VALORES (OU INCIDENENCIA DE VALORES) DE UMA TABELA:
SELECT COUNT(tbl_pedido)AS 'TOTAL PRODUTOS ENVOLVIDO EM PEDIDOS' FROM tbl_produto;			# COUNT -> CONTA A QUANTIDADE DE VALORES (OU INCIDENENCIA DE VALORES) DE UMA TABELA:
SELECT COUNT(tbl_cliente)AS 'TOTAL CLIENTE ENVOLVIDO EM PEDIDOS' FROM tbl_pedido;			# COUNT -> CONTA A QUANTIDADE DE VALORES (OU INCIDENENCIA DE VALORES) DE UMA TABELA:



# INFORMAR
SELECT SUM(valor) AS 'VALOR TOTAL DOS PRODUTOS' FROM tbl_produto;  			# SUM -> REALIZAR A SOMA DE UM CAMPO NÚMERICO ESPECIFICO:
SELECT SUM(valor) AS 'VALOR TOTAL DOS PRODUTOS' FROM tbl_itempedido;		# SUM -> REALIZAR A SOMA DE UM CAMPO NÚMERICO ESPECIFICO:
SELECT AVG(valor) AS 'PREÇO MÉDIO' FROM tbl_produto;  						# AVG -> DETERMINA A MÉDIA DE UM GRUPO DE VALORES NÚMERICOS
SELECT MAX(valor) AS 'MAIOR VALOR' FROM tbl_produto;						# MAX -> DEVOLVE O MAIOR VALOR DE UMA SERIE DE VALORES NÚMERICOS
SELECT MIN(valor) AS 'MENOR VALOR' FROM tbl_produto;						# MIN -> DEVOLVE O MENOR VALOR DE UMA SERIE DE VALORES NÚMERICOS





