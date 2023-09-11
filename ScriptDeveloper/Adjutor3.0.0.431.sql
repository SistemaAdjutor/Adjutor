ALTER TABLE SHAREDB
    ADD FISCAL VARCHAR(1);
--------------------------------------------------------------------------------
commit work;

update sharedb set FISCAL = 'C';

--------------------------------------------------------------------------------
commit work;

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.431' ,
       VERSAOSISTEMA.DATA   = '12.08.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
