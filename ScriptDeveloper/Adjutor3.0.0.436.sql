ALTER TABLE PRMT0001
    ADD PMT_PADRAO_EMP_CONSULTA VARCHAR(1) DEFAULT 'L';

COMMENT ON COLUMN PRMT0001.PMT_PADRAO_EMP_CONSULTA IS
'L = LOGADA
T = TODAS';
--------------------------------------------------------------------------------
commit work;
UPDATE PRMT0001 SET PMT_PADRAO_EMP_CONSULTA = 'L' WHERE PMT_PADRAO_EMP_CONSULTA IS NULL;
--------------------------------------------------------------------------------
commit work;
Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.436' ,
       VERSAOSISTEMA.DATA   = '12.10.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
