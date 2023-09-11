CREATE INDEX PCX0000_IDX1
ON PCX0000 (PCX_CODIGO);

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PRMT0001
    ADD PMT_OBRIGAR_GRADE_VENDA VARCHAR(1);

commit work;
--------------------------------------------------------------------------------
UPDATE prmt0001 SET PMT_OBRIGAR_GRADE_VENDA = 'N' WHERE PMT_OBRIGAR_GRADE_VENDA IS NULL;

commit work;
-----------------------------------------------------------------------------


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.419' ,
       VERSAOSISTEMA.DATA   = '14.04.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
