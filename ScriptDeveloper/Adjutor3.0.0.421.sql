ALTER TABLE TRP0000
    ADD TRP_PLACA VARCHAR(10);

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PED_IT01
    ADD PRF_PRECO_ORIGINAL DECIMAL6;

commit work;
--------------------------------------------------------------------------------
UPDATE ped_it01 SET PRF_PRECO_ORIGINAL = PRF_PRECO;

commit work;
--------------------------------------------------------------------------------

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.421' ,
       VERSAOSISTEMA.DATA   = '19.05.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
