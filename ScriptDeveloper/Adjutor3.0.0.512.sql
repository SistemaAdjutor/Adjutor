
UPDATE  VERSAOSISTEMA 
SET SCRIPTADJUTOR = '3.0.9.512',
	VERSAO = '3.0.9.512',
    VERSAOSISTEMA.DATA   = CURRENT_DATE
 where VERSAOSISTEMA.CODIGO = 1;
 
 

ALTER TABLE BAN0000 ADD BAN_LEIAUTE INTEGER;

COMMENT ON COLUMN BAN0000.BAN_LEIAUTE IS 'LEAIUTE DO CNAB : 1-CNAB400 2-CNAB240';
UPDATE BAN0000
SET BAN_LEIAUTE = 1;

commit work;

COMMENT ON COLUMN BAN0000.BAN_CONVENIO IS 'NUMERO DO CONVENIO DE COBRANCA';
COMMENT ON COLUMN BAN0000.BAN_ESPECIE_COB IS 'ESPECIE DO TITULO DE ACORDO COM O BANCO E LEAIUTE';


COMMENT ON TABLE INSTRUCAO_CNAB IS 'CODIGO DE MOVIMENTO DA REMESSA DOS BANCOS';
ALTER TABLE INSTRUCAO_CNAB ADD BAN_LEIAUTE INTEGER;

COMMENT ON COLUMN INSTRUCAO_CNAB.BAN_LEIAUTE IS 'LEAIUTE DO CNAB : 1-CNAB400 2-CNAB240';

UPDATE INSTRUCAO_CNAB
SET BAN_LEIAUTE = 1;

commit work;

INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (106,237, '01','ENTRADA DE TÍTULOS',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (107,237, '02','PEDIDO DE BAIXA',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (108,237, '03','PROTESTO PARA FINS FALIMENTARES',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (109,237, '04','CONCESSÃO DE ABATIMENTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (110,237, '05','CANCELAMENTO DE ABATIMENTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (111,237, '06','ALTERAÇÃO DE VENCIMENTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (112,237, '07' ,'CONCESSÃO DE DESCONTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (113,237, '09','PROTESTAR',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (114,237, '10','SUSTAR PROTESTO E BAIXAR TÍTULO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (115,237, '11','SUSTAR PROTESTO E MANTER EM CARTEIRA',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (116,237, '12','ALTERAÇÃO DE JUROS DE MORA',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (117,237, '13','DISPENSAR COBRANÇA DE JUROS DE MORA',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (118,237, '14','ALTERAÇÃO DE VALOR/PERCENTUAL DE MULTA',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (119,237, '15','DISPENSAR COBRANÇA DE MULTA',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (120,237, '16','ALTERAÇÃO DO VALOR DE DESCONTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (121,237, '18','ALTERAÇÃO DO VALOR DE ABATIMENTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (122,237, '21','ALTERAR NÚMERO DO TÍTULO DADO PELO BENEFICIARIO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (123,237, '22','ALTERAR NÚMERO CONTROLE DO PARTICIPANTE',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (124,237, '23','ALTERAR DADOS DO PAGADOR',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (125,237, '24','ALTERAR DADOS DO SACADOR/AVALISTA',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (126,237, '31','ALTERAÇÃO DE OUTROS DADOS',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (127,237, '33','ALTERAÇÃO DOS DADOS DO RATEIO DE CRÉDITO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (128,237, '34','PEDIDO DE CANCELAMENTO DOS DADOS DO RATEIO DE CRÉDITO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (129,237, '35','PEDIDO DE DESAGENDAMENTO DO DÉBITO AUTOMÁTICO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (130,237, '42','ALTERAÇÃO DE ESPÉCIE DE TÍTULO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (131,237, '45','NEGATIVAÇÃO SEM PROTESTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (132,237, '46','SOLICITAÇÃO DE BAIXA DE TÍTULO NEGATIVADO SEM PROTESTO',2);
INSERT INTO INSTRUCAO_CNAB ( IST_REGISTRO, IST_COD_BANCO, IST_CODIGO, IST_DESCRICAO,BAN_LEIAUTE) VALUES (133,237, '47','SOLICITAÇÃO EXCLUIR NEGATIVAÇÃO E MANTER PENDENTE',2);

COMMIT WORK;
