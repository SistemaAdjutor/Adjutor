execute block as
  declare variable x integer;
begin
  SELECT max(prd0000.prd_codigo) from prd0000 into x;
  execute statement 'set generator GEN_PRD_CODIGO to ' || (x+1);
end;
commit work;

