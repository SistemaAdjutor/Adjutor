UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.543 patch 1',
       VERSAOSISTEMA.DATA   = '03.04.2020',
	    VERSAO = '3.0.9.543'
 where VERSAOSISTEMA.CODIGO = 1;

commit work; 


UPDATE PED0000
SET SITEXP = 'PEN'
WHERE SITEXP = '';

commit work;