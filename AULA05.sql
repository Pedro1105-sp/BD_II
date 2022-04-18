#INSERÇÃO DE DADOS NA TABELA tbl_especialidade:
INSERT INTO tbl_especialidade (nome_pessoa_especialidade)
VALUES ('NEUROLOGIA');

INSERT INTO tbl_especialidade (nome_pessoa_especialidade)
VALUES ('ORTOPEDIA');

INSERT INTO tbl_especialidade (nome_pessoa_especialidade)
VALUES ('PODOLOGIA');

INSERT INTO tbl_especialidade (nome_pessoa_especialidade)
VALUES ('OFTANOLOGIA');  #VIROU 7, POIS EXCLUI O 6

SELECT *FROM tbl_especialidade;

#exemplo
CREATE DATABASE vacinacao;
USE vacinacao;

CREATE TABLE pessoas(
	cod_pessoa int unsigned auto_increment primary key,
    nome_pessoa varchar(500) not null,
    idade int not null
);

show tables;

describe pessoas;


INSERT INTO pessoas(nome_pessoa,idade)
VALUES('Ana', 30);

INSERT INTO pessoas(nome_pessoa,idade)
VALUES('Ana', 40);

INSERT INTO pessoas(nome_pessoa,idade)
VALUES('Ana', 50);

INSERT INTO pessoas(nome_pessoa,idade)
VALUES('Ana', 60);

INSERT INTO pessoas(nome_pessoa,idade)
VALUES('Ana', 70);

INSERT INTO pessoas(nome_pessoa,idade)
VALUES('Ana', 80);

INSERT INTO pessoas(nome_pessoa,idade)
VALUES('Ana', 95);

SELECT * FROM pessoas;

SELECT * FROM pessoas
WHERE
idade >= 75 OR idade <= 89;

SELECT * FROM pessoas
WHERE
idade >= 75 AND idade <= 89;

