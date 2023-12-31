UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.562 patch 2',
    VERSAOSISTEMA.DATA   = '11.11.2021',
	VERSAO = '3.0.9.562'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE OCP0000 ADD EMI_CODIGO INTEGER;
ALTER TABLE ALMOX0000 ADD EMI_CODIGO INTEGER;
ALTER TABLE ENF0001 ADD EMI_CODIGO INTEGER;
ALTER TABLE PED0000 ADD EMI_CODIGO INTEGER;
ALTER TABLE PEDIDO_IE ADD EMI_CODIGO INTEGER;
UPDATE OCP0000 oc SET EMI_CODIGO = (SELECT FIRST 1 EMI_CODIGO FROM EMP_MULTIPLAS_IE emi WHERE oc.EMI_IE = emi.EMI_IE);
UPDATE ALMOX0000 am SET EMI_CODIGO = (SELECT FIRST 1 EMI_CODIGO FROM EMP_MULTIPLAS_IE emi WHERE am.EMI_IE = emi.EMI_IE);
UPDATE ENF0001 en SET EMI_CODIGO = (SELECT FIRST 1 EMI_CODIGO FROM EMP_MULTIPLAS_IE emi WHERE en.EMI_IE = emi.EMI_IE);
UPDATE PED0000 pe SET EMI_CODIGO = (SELECT FIRST 1 EMI_CODIGO FROM EMP_MULTIPLAS_IE emi WHERE pe.EMI_IE = emi.EMI_IE);
UPDATE PEDIDO_IE  pi SET EMI_CODIGO = (SELECT FIRST 1 EMI_CODIGO FROM EMP_MULTIPLAS_IE emi WHERE pi.EMI_IE = emi.EMI_IE);
commit work;


