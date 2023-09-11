ALTER TABLE PRMT0001
    ADD PMT_HABILITA_TABELA_PRECOS VARCHAR(1);

commit work;
--------------------------------------------------------------------------------
update PRMT0001 set  PMT_HABILITA_TABELA_PRECOS = 'N' where PMT_HABILITA_TABELA_PRECOS is null;

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PED_IT01
    ADD PRF_TABPRECO VARCHAR(2);

commit work;
--------------------------------------------------------------------------------
ALTER TABLE USUARIO_PARAMETRO
    ADD USP_ALTERA_TABELA_PRECOS CHAR(1) DEFAULT 'N';

commit work;
--------------------------------------------------------------------------------
update USUARIO_PARAMETRO set  USP_ALTERA_TABELA_PRECOS = 'N' where USP_ALTERA_TABELA_PRECOS is null;

commit work;
--------------------------------------------------------------------------------

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.423' ,
       VERSAOSISTEMA.DATA   = '12.06.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
