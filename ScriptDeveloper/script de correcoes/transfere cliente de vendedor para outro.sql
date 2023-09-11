update cli0000 set cli0000.rep_codigo = '009'  -- cod. marcos (saindo)
   where cli0000.rep_codigo = '004';   -- cod.reginaldo (entrando)

commit work;

