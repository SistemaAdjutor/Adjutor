UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.566 patch 3',
    VERSAOSISTEMA.DATA   = '23.03.2022',
	VERSAO = '3.0.9.566'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE PRMT0001  ALTER PMT_LOC_PAGTO TYPE VARCHAR(255);
UPDATE PRMT0001 p1 SET p1.PMT_LOC_PAGTO = (SELECT CASE WHEN p2.PMT_LOC_PAGTO IS NULL THEN 'PAGÁVEL EM QUALQUER BANCO DO SISTEMA DE COMPENSAÇÃO' WHEN p2.PMT_LOC_PAGTO = '' THEN 'PAGÁVEL EM QUALQUER BANCO DO SISTEMA DE COMPENSAÇÃO' ELSE p2.PMT_LOC_PAGTO END FROM PRMT0001 p2 WHERE p1.EMP_CODIGO = p2.EMP_CODIGO) ;


ALTER TABLE EMP0000 ADD EMP_TIPO_CERTIFICADO_NFSE INTEGER;

ALTER TABLE PRMT0001 ADD PMT_METODO_CALCULO_PRECO VARCHAR(1) DEFAULT 0;
UPDATE PRMT0001 SET PMT_METODO_CALCULO_PRECO = '0' WHERE PMT_METODO_CALCULO_PRECO IS NULL;
COMMIT WORK;

ALTER TABLE PRD0000 ADD PRD_ESTOQUE_SEGURANCA_REG NUMERIC(18,4);
ALTER TABLE PRD0000 ADD PRD_LOTE_COMPRA_REG VARCHAR(30);
ALTER TABLE PRD0000 ADD PRD_OBSERVACAO_REG BLOB SUB_TYPE TEXT;
ALTER TABLE PRD0000 ADD PRD_DATA_REG DATE;
ALTER TABLE PRD0000 ADD PRD_USU_CODIGO_REG INTEGER;
ALTER TABLE PRD0000 ADD PRD_ALMOX_UNICO VARCHAR(1);
ALTER TABLE USUARIO_PARAMETRO ADD USP_PROD_SEM_ALMOX CHAR(1);
ALTER TABLE PRD0000 ALTER AMX_CODIGO TYPE VARCHAR(4);
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='001') WHERE EMP_CODIGO = '001';
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='002') WHERE EMP_CODIGO = '002';
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='003') WHERE EMP_CODIGO = '003';
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='004') WHERE EMP_CODIGO = '004';
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='005') WHERE EMP_CODIGO = '005';
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='006') WHERE EMP_CODIGO = '006';
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='007') WHERE EMP_CODIGO = '007';
UPDATE PRD0000 SET AMX_CODIGO = (SELECT PMT_AMX_ENTRADA FROM PRMT0001 p WHERE EMP_CODIGO ='008') WHERE EMP_CODIGO = '008';
COMMIT WORK;


