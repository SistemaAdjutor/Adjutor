UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.587 patch 1',
    VERSAOSISTEMA.DATA   = '14.12.2023',
	VERSAO = '3.0.9.587'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE FTC_IT01 ADD FTI_UTILIZA_ITEM_NO_RETORNO VARCHAR(1);

ALTER TABLE TIPO_MOLA ADD MMO_EXTREMIDADE VARCHAR(1);
ALTER TABLE  MOLA_MATERIA ADD MMO_EXTREMIDADE_MOLA_MATERIA VARCHAR(1);
