UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.538 patch 10',
       VERSAOSISTEMA.DATA   = '28.11.2019',
	    VERSAO = '3.0.9.538'
 where VERSAOSISTEMA.CODIGO = 1;

 commit work;

ALTER TABLE REP0000 ALTER COLUMN REP_EMAIL TYPE VARCHAR(60);
ALTER TABLE EMP0000 ADD EMP_NFE_REP VARCHAR(1);

UPDATE EMP0000
SET EMP_NFE_REP = 'N';

COMMIT WORK;

COMMENT ON COLUMN EMP0000.EMP_NFE_REP IS 'ENVIAR POR EMAIL A NFE AO VENDEDOR';