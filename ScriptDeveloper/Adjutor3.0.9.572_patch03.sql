UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.572 patch 3',
    VERSAOSISTEMA.DATA   = '28.09.2022',
	VERSAO = '3.0.9.572'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE EMP0000 ADD EMP_NFE_MAIL_ALIAS VARCHAR(255);
ALTER TABLE EMP0000 ADD EMP_FINANCEIRO_MAIL_ALIAS VARCHAR(255);

