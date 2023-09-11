ALTER TABLE ENF_IT01
    ADD ENF_PESO_ENTRADA DECIMAL6;

--------------------------------------------------------------------------------
commit work;



Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.415' ,
       VERSAOSISTEMA.DATA   = '19.02.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
