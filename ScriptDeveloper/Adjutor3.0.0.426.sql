ALTER TABLE PRMT0001
    ADD PMT_CUSTO_BASE_PRODUCAO VARCHAR(2) DEFAULT 'CL';

COMMENT ON COLUMN PRMT0001.PMT_CUSTO_BASE_PRODUCAO IS
'CL = CUSTO LIQUIDO
CE = CUSTO ENTRADA
CM = CUSTO MEDIO
SI = SEM IMPOSTOS';

commit work;
--------------------------------------------------------------------------------
update PRMT0001 set PMT_CUSTO_BASE_PRODUCAO = 'CL' where PMT_CUSTO_BASE_PRODUCAO is null;

commit work;
--------------------------------------------------------------------------------

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.426' ,
       VERSAOSISTEMA.DATA   = '03.07.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
