UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.585 patch 5',
    VERSAOSISTEMA.DATA   = '17.10.2023',
	VERSAO = '3.0.9.585'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE MATERIAPRIMA_ORDEMPRODUCAO ADD FTI_PERCENTUAL NUMERIC(18, 5);
