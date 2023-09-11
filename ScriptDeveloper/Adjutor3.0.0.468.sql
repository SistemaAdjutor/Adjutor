CREATE OR ALTER VIEW PRD0000_VIEW(
    PRD_CODIGO,
    PRD_REFER,
    PRD_DESCRI,
    PRD_UND,
    DESCRICAO,
    EMP_CODIGO)
AS
select prd_codigo, prd_refer, prd_descri, prd_und, prd_refer||' - '||prd_descri as descricao, emp_codigo
from prd0000
;
COMMIT WORK;

UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.468',
       VERSAOSISTEMA.DATA   = '22.11.2016'
 where VERSAOSISTEMA.CODIGO = 1;
 
 COMMIT WORK;