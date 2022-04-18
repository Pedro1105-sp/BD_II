#DESCREVE A ESTRUTURA DE UMA TABELA:
DESCRIBE tbl_especialidade;

#INSERÇÃO DE DADOS NA TABELA tbl_especialidade:
INSERT INTO tbl_especialidade (nome_especialidade)
VALUES ('CARDIOLOGIA');   #VALUES = STRING

INSERT INTO tbl_especialidade (nome_especialidade)
VALUES ('PEDIATRIA');

#SELEÇÃO DE DADOS DA TABELA tbl_especialidade
SELECT * FROM tbl_especialidade; # * = SELECIONAR TUDO      FROM = DE ONDE       * = TODOD OS DADOS DA TABELA tbl_medico
