UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.553 patch 4',
    VERSAOSISTEMA.DATA   = '25.02.2021',
	VERSAO = '3.0.9.553'
 where VERSAOSISTEMA.CODIGO = 1;
 
ALTER TABLE PRMT0001 ADD PMT_CENTROCUSTO_REQUERIDO_PAGAR VARCHAR(1);
UPDATE PRMT0001 SET PMT_CENTROCUSTO_REQUERIDO_PAGAR = 'S';