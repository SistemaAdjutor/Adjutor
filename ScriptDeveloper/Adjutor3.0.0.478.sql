ALTER TABLE PRMT0001
    ADD PMT_CONTROLA_KIT CHAR(1);
	
COMMIT WORK;

update usuario_acesso
set usuario_acesso.usa_relatorio = 'S'
where usuario_acesso.usa_relatorio is null;

commit work;


UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.478',
       VERSAOSISTEMA.DATA   = '23.02.2017'
 where VERSAOSISTEMA.CODIGO = 1;
 
 COMMIT WORK;

 