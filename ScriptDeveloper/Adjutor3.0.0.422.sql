ALTER TABLE PRMT0001
    ADD PMT_OBRIGAR_DIRETIVA_VENDA VARCHAR(1),
    ADD PMT_EMPRESA_PADRAO_BOLETO VARCHAR(3);

commit work;
--------------------------------------------------------------------------------
UPDATE PRMT0001 SET PMT_OBRIGAR_DIRETIVA_VENDA = 'N' WHERE PMT_OBRIGAR_DIRETIVA_VENDA IS NULL;

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PRMT0001
    ADD PMT_DPL_ST_NA1D VARCHAR(1) DEFAULT 'N';

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PRMT0001 ALTER COLUMN PMT_OBRIGAR_DIRETIVA_VENDA
SET DEFAULT 'N';

commit work;
--------------------------------------------------------------------------------
update prmt0001 set  PMT_DPL_ST_NA1D = 'N' where PMT_DPL_ST_NA1D is null;

commit work;
--------------------------------------------------------------------------------

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.422' ,
       VERSAOSISTEMA.DATA   = '27.05.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
