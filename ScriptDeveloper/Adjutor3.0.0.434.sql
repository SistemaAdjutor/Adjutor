ALTER TABLE PRMT0001
    ADD PMT_PADRAO_PESQUISA_PROD VARCHAR(1) DEFAULT 'R';

COMMENT ON COLUMN PRMT0001.PMT_PADRAO_PESQUISA_PROD IS
'R = REFERENCIA
D = DESCRICAO
O = CODIGO ORIGINAL
F = FORNECEDOR';
--------------------------------------------------------------------------------
commit work;

UPDATE PRMT0001 SET PMT_PADRAO_PESQUISA_PROD = 'R' WHERE PMT_PADRAO_PESQUISA_PROD IS NULL;

--------------------------------------------------------------------------------
commit work;

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.434' ,
       VERSAOSISTEMA.DATA   = '09.09.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
