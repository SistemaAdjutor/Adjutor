UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.548 patch 1',
    VERSAOSISTEMA.DATA   = '15.09.2020',
	VERSAO = '3.0.9.548'
 where VERSAOSISTEMA.CODIGO = 1;
 
commit work;
ALTER TABLE PED0000 ADD PED_USUARIO_CANCELAMENTO INTEGER;
ALTER TABLE PED0000 ADD PED_DATA_CANCELAMENTO TIMESTAMP;