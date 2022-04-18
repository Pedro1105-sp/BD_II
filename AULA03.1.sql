#SELECIONA (HABILITAR/ATIVAR) O BANCO DE DADOS:
USE centro_cirugico;

#DESCREVE A ESTRUTURA DE UMA TABELA:
DESCRIBE tbl_especialidade;
DESCRIBE tbl_medico;

#INSERÇÃO DE DADOS NA TABELA tbl_especialidade:
INSERT INTO tbl_especialidade (nome_especialidade)
VALUES ('CARDIOLOGIA');
INSERT INTO tbl_especialidade (nome_especialidade)
VALUES ('PEDIATRIA');

#SELEÇÃO DE DADOS DA TABELA tbl_especialidade:
SELECT * FROM tbl_especialidade;

#INSERÇÃO DE DADOS NA TABELA tbl_medico:
INSERT INTO 
tbl_medico (cod_especialidade, nome_medico, email_medico, telefone_medico, celular_medico)
VALUES(1, 'ANA MARIA', 'ana_maria@gmail.com', '1112345678', '11912345678');

INSERT INTO 
tbl_medico (cod_especialidade, nome_medico, email_medico, telefone_medico, celular_medico)
VALUES(1, 'MARIA DA SILVA', 'maria_silva@gmail.com', '112345678', '11932456798');

INSERT INTO 
tbl_medico (cod_especialidade, nome_medico, email_medico, telefone_medico, celular_medico)
VALUES(1, 'MARIA DA SILVA', 'maria_silva@gmail.com', '112345678', '11932456798');

#SELEÇÃO DE DADOS DA TABELA tbl_especialidade:
SELECT * FROM tbl_medico;


#ATUALIZAÇÃO DE DADOS NA TABELA tbl_medico:
# SET - FAZER O SETP
UPDATE tbl_medico SET
email_medico = 'm.silva@gmail.com',
telefone_medico = '113456782',
celular_medico = '11962348097'
WHERE cod_medico = 2;   # WHERE - DETERMINA A CONDIÇÃO DO REGISTRO QUE SOFRE A ATUALIZAÇÃO  -> TRAVA DE SEGURANÇA 


# NÃO VAI FUNCIONAR, POIS ESTÁ SEM O WHERE-> QUE É A TRAVA DE SEGURANÇA
UPDATE tbl_medico SET
email_medico = 'm.silva@gmail.com',
telefone_medico = '113456782',
celular_medico = '11962348097';
















