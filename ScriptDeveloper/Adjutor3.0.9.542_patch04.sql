UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.542 patch 4',
       VERSAOSISTEMA.DATA   = '23.03.2020',
	    VERSAO = '3.0.9.542'
 where VERSAOSISTEMA.CODIGO = 1;

commit work; 


DELETE FROM WSNOVI;
INSERT INTO WSNOVI (WSLIC, SEQUENCIA) VALUES ('http://novinow.dynu.net:9090/ValidadorOnline/valida/validar', 1);
INSERT INTO WSNOVI (WSLIC, SEQUENCIA) VALUES ('http://novinow.ddns.net:9090/ValidadorOnline/valida/validar', 2);

COMMIT WORK;


update IBPT0000 set   IBPT_EX='' where IBPT_EX is null;

COMMIT WORK;