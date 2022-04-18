USE centro_cirugico;

INSERT INTO 
tbl_medico (cod_especialidade, nome_medico, email_medico, telefone_medico, celular_medico)
VALUES(2, 'JOÃO DA SILVA', 'joao_silva@gmail.com', '112222222', '11333333333');

INSERT INTO 
tbl_medico (cod_medico, cod_especialidade, nome_medico, email_medico, telefone_medico, celular_medico)
VALUES(3, 2, 'JOÃO DA SILVA', 'joao_silva@gmail.com', '112222222', '11333333333');


SELECT * FROM tbl_medico;
# DELETE = DELETAR    FROM = DE ONDE
DELETE FROM tbl_medico WHERE cod_medico = 3;  # WHERE FILTRO PARA DETERMINAR A AÇÃO DO COMANDO  -> TRAVA DE SEGURANÇA

################ VARIAÇOES DE SELECT ################
SELECT nome_medico, email_medico, celular_medico
FROM tbl_medico;

SELECT nome_medico FROM tbl_medico;

#OPERADOR DE IGUALDADE
SELECT nome_medico, email_medico, celular_medico
FROM tbl_medico
WHERE cod_medico = 3;

#OPERADOR MENOR QUE < e <=
SELECT cod_medico, email_medico, celular_medico
FROM tbl_medico
WHERE cod_medico < 5;

SELECT cod_medico, email_medico, celular_medico
FROM tbl_medico
WHERE cod_medico <= 5;

#OPERADOR MAIOR QUE > e >=
SELECT cod_medico, email_medico, celular_medico
FROM tbl_medico
WHERE cod_medico > 5;

SELECT cod_medico, email_medico, celular_medico
FROM tbl_medico
WHERE cod_medico >= 5;

#OPERADOR DIFERENTE DE !=
SELECT cod_medico, email_medico, celular_medico
FROM tbl_medico
WHERE cod_medico != 3;





