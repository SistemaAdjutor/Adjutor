UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.575',
    VERSAOSISTEMA.DATA   = '01.12.2022',
	VERSAO = '3.0.9.575'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE PED_IT01 ADD PRF_SEQUENCIA INTEGER; 
UPDATE PED_IT01 SET PRF_SEQUENCIA = PRF_REGISTRO;
COMMIT WORK;


