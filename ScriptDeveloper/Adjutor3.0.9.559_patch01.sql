UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.559 patch 1',
    VERSAOSISTEMA.DATA   = '10.08.2021',
	VERSAO = '3.0.9.559'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE CUSTOINDUST ADD CIO_CUSTOS_TEMP NUMERIC(15,3);
ALTER TABLE CUSTOINDUST ADD CIO_DESPESAS_TEMP NUMERIC(15,3);
UPDATE CUSTOINDUST SET CIO_CUSTOS_TEMP = CIO_CUSTOS;
commit work;
UPDATE CUSTOINDUST SET CIO_DESPESAS_TEMP = CIO_DESPESAS;
commit work;
ALTER TABLE CUSTOINDUST DROP CIO_CUSTOS;
ALTER TABLE CUSTOINDUST DROP CIO_DESPESAS;
ALTER TABLE CUSTOINDUST ALTER COLUMN CIO_CUSTOS_TEMP TO CIO_CUSTOS;
ALTER TABLE CUSTOINDUST ALTER COLUMN CIO_DESPESAS_TEMP TO CIO_DESPESAS;
