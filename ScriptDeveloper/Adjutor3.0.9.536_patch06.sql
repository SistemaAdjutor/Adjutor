

UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.536 patch 6',
       VERSAOSISTEMA.DATA   = '13.09.2019',
	    VERSAO = '3.0.9.536'
 where VERSAOSISTEMA.CODIGO = 1;

commit work;

DELETE FROM PED_IT01
  WHERE PED_CODIGO = '' ;
  
DELETE FROM PED0000
  WHERE PED_CODIGO = '';


commit work;