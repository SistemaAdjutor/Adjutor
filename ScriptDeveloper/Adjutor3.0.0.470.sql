SET TERM ^ ;
execute block as
  declare variable x integer;
begin
  SELECT max(prd0000.prd_codigo) from prd0000 into x;
  execute statement 'set generator GEN_PRD_CODIGO to ' || (x+1);
end
^
SET TERM ; ^

 COMMIT WORK;
 
UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.470',
       VERSAOSISTEMA.DATA   = '05.12.2016'
 where VERSAOSISTEMA.CODIGO = 1;
 
 COMMIT WORK;