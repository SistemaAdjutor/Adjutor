CREATE INDEX OPE_REGRA_IDX1
ON OPE_REGRA (IPI_CODIGO);

commit work;
--------------------------------------------------------------------------------

CREATE INDEX OPE_REGRA_IDX2
ON OPE_REGRA (OPE_CODIGO_ORIGEM);

commit work;
--------------------------------------------------------------------------------
ALTER TABLE OPV0000
    ADD OPV_ATUALIZA_DATA_PEDIDO VARCHAR(1) DEFAULT 'S';

commit work;
--------------------------------------------------------------------------------
update OPV0000 set OPV_ATUALIZA_DATA_PEDIDO = 'S' where OPV_ATUALIZA_DATA_PEDIDO is null;

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PRD_DIRETIVA
    ADD PRDD_SIGLA VARCHAR(5);

commit work;
--------------------------------------------------------------------------------


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.425' ,
       VERSAOSISTEMA.DATA   = '02.07.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
