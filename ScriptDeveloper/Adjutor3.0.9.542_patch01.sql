UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.542 patch 1',
       VERSAOSISTEMA.DATA   = '09.03.2020',
	    VERSAO = '3.0.9.542'
 where VERSAOSISTEMA.CODIGO = 1;

commit work;

DELETE FROM WSNOVI;

ALTER TABLE WSNOVI ADD SEQUENCIA  INTEGER;

INSERT INTO WSNOVI VALUES ('http://novinow.dynu.net:8080/ValidadorOnline/valida/validar',1);
INSERT INTO WSNOVI VALUES ('http://novinow.ddns.net:8080/ValidadorOnline/valida/validar',2);


