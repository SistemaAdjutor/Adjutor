UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.555 patch 5',
    VERSAOSISTEMA.DATA   = '30.04.2021',
	VERSAO = '3.0.9.555'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE PRMT0001 ADD PMT_VALOR_MINIMO_DO_SERVICO NUMERIC (18,5);